module sequencer #(parameter n=4, logn=2)
	(input logic start, clock, Q0,
	 output logic add_shift, shift, ready, reset);

enum {idle, shifting, stopped} present, next;
logic [logn - 1:0] count, next_count;

always_ff @(posedge clock)
	/*if (reset)
	begin
		present <= idle;
		count <= 0;
	end
	else*/
	begin
		present <= next;
		count <= next_count;
	end

always_comb
begin
	add_shift = 1'b0;
	shift = 1'b0;
	ready = 1'b0;
	reset = 1'b0;
	next = present;
	next_count = count;
	case (present)
	idle:
		if (start)
		begin
			reset = 1'b1;
			next_count = n;
			next = shifting;
		end
	shifting:
	begin
		next_count = count - 1;
		next = shifting;
		if (Q0)
			add_shift = 1'b1;
		else
			shift = 1'b1;
		if (next_count != 0)
			next = shifting;
		else
			next = stopped;
	end
	stopped:
	begin
		ready = 1'b1;
		if (start)
		begin
			next_count = n;
			next = shifting;
			reset = 1'b1;
		end
		else
			next = stopped;
	end
	default:
		next = idle;
	endcase
end

endmodule
