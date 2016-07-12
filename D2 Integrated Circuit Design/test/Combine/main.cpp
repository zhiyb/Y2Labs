#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>

#define MAX	8

using namespace std;

bool clockExist = false;

struct pin_t {
	string name;
	enum Values {Low, High, Clock, Unknown} value;

	static Values toValue(const char c);
};
vector<pin_t> pins;

struct vec_t {
	vec_t(void) : clocked(false), finished(false) {}
	bool open(const char *path);
	bool readHeader(const bool rebuild = false);
	bool printVector(void);
	void printVector(const string &str);
	bool accept(const string &str);

	struct pin_t {
		pin_t(void) : dup(false) {}

		string name;
		bool dup;
	};
	vector<pin_t> pins;
	ifstream fs;
	string buffer, last;
	bool clocked, finished;
} vec[MAX];

string trim(const string &str)
{
	istringstream ss(str);
	string res, tmp;
	while (ss >> tmp)
		if (res.empty())
			res = tmp;
		else
			res.append(" " + tmp);
	return res;
}

string nospace(const string &str)
{
	istringstream ss(str);
	string res, tmp;
	while (ss >> tmp)
		res.append(tmp);
	return res;
}

bool checkDupPin(const string &name)
{
	for (vector<pin_t>::iterator it = pins.begin(); it != pins.end(); it++)
		if (name == it->name)
			return true;
	return false;
}

void setPin(const string &name, pin_t::Values v)
{
	for (vector<pin_t>::iterator it = pins.begin(); it != pins.end(); it++)
		if (name == it->name)
			it->value = v;
}

pin_t::Values pin_t::toValue(const char c)
{
	switch (c) {
	case '0':
		return Low;
	case '1':
		return High;
	case 'C':
		return Clock;
	default:
		return Unknown;
	}
}

bool vec_t::open(const char *path)
{
	fs.open(path);
	if (!fs.good()) {
		cerr << "Error opening file: " << path << endl;
		return false;
	}
	return true;
}

bool vec_t::readHeader(const bool rebuild)
{
	string str;
	fs.seekg(0);
read:
	getline(fs, str);
	if (fs.eof() || str.empty())
		goto read;
	if (str.at(0) == '#') {
		if (rebuild)
			cout << str << endl;
		goto read;
	}
	if (str == "<PinDef>")
		goto read;
	if (str == "</PinDef>")
		return true;
	if (!rebuild)
		goto read;
	istringstream iss(str);
	string token;
readPin:
	if (!getline(iss, token, ','))
		goto read;
	vec_t::pin_t pin;
	pin.name = trim(token);
	if (!(pin.dup = checkDupPin(pin.name))) {
		::pin_t p;
		p.name = pin.name;
		::pins.push_back(p);
	}
	pins.push_back(pin);
	goto readPin;
}

void vec_t::printVector(const string &str)
{
	int i = 0;
	for (vector<pin_t>::iterator it = pins.begin(); it != pins.end(); it++, i++)
		if (!it->dup) {
			cout << str.at(i);
			::pin_t::Values v = ::pin_t::toValue(str.at(i));
			setPin(it->name, v);
			if (v == ::pin_t::Clock) {
				clocked = true;
				clockExist = true;
			}
		}
}

bool vec_t::accept(const string &str)
{
	// Clock required
	bool clk = false;
	int i = 0;
	for (vector<pin_t>::iterator it = pins.begin(); it != pins.end(); it++, i++)
		if (it->dup) {
			for (vector< ::pin_t >::iterator git = ::pins.begin(); git != ::pins.end(); git++)
				if (it->name == git->name && git->value != ::pin_t::Unknown && ::pin_t::toValue(str.at(i)) != git->value)
					return false;
		} else if (str.at(i) == 'C')
			clk = true;
	if (clockExist && clk)
		return false;
	return true;
}

bool vec_t::printVector(void)
{
	if (!buffer.empty()) {
		if (!accept(buffer)) {
			printVector(last);
			return !finished;
		} else {
			printVector(buffer);
			buffer.clear();
			return !finished;
		}
	}
	string str;
read:
	getline(fs, str);
	if (fs.eof() || str == "</TestVector>") {
		finished = true;
		if (!clocked) {
			readHeader(false);
			goto read;
		}
		printVector(last);
		return false;
	}
	if (str.empty() || str.at(0) == '#' || str == "<TestVector>")
		goto read;
	str = nospace(str);
	if (!accept(str)) {
		printVector(last);
		buffer = str;
		return !finished;
	}
	last = str;
	printVector(last);
	finished = finished || fs.eof();
	return !finished;
}

int main(int argc, char *argv[])
{
	if (argc <= 1) {
		cout << "Usage: " << argv[0] << " [.vec files...]" << endl;
		return 0;
	} else if (argc > 1 + MAX) {
		cout << "Too many files!" << endl;
		return 1;
	}
	const int cnt = argc - 1;
	cout << "<PinDef>" << endl;
	for (int i = 0; i < cnt; i++) {
		if (i)
			cout << endl;
		if (!vec[i].open(argv[1 + i]))
			return 1;
		if (!vec[i].readHeader(true))
			return 1;
	}
	for (vector<pin_t>::iterator it = pins.begin(); it != pins.end(); it++)
		if (it == pins.begin())
			cout << it->name;
		else
			cout << ", " << it->name;
	cout << endl;
	cout << "</PinDef>" << endl;

	cout << "<TestVector>" << endl;
printVector:
	clockExist = false;
	for (vector<pin_t>::iterator it = pins.begin(); it != pins.end(); it++)
		it->value = pin_t::Unknown;
	bool pnt = false;
	for (int i = 0; i < cnt; i++) {
		if (i)
			cout << " ";
		pnt = vec[i].printVector() || pnt;
	}
	cout << endl;
	if (pnt)
		goto printVector;
	cout << "</TestVector>" << endl;
	return 0;
}
