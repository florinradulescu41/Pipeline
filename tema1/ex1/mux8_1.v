module m81(input IN0, IN1, IN2, IN3, IN4, IN5, IN6, IN7, S0, S1, S2, output Y); 
 
wire nS0, nS1, nS2, outa0, outa1, outa2, outa3, outa4, outa5, outa6, outa7;

not_gate ng0(nS0, S0);
not_gate ng1(nS1, S1);
not_gate ng2(nS2, S2);

and_gate ag0(outa0, IN0, nS0, nS1, nS2);
and_gate ag1(outa1, IN1, S0, nS1, nS2);
and_gate ag2(outa2, IN2, nS0, S1, nS2);
and_gate ag3(outa3, IN3, S0, S1, nS2);
and_gate ag4(outa4, IN4, nS0, nS1, S2);
and_gate ag5(outa5, IN5, S0, nS1, S2);
and_gate ag6(outa6, IN6, nS0, S1, S2);
and_gate ag7(outa7, IN7, S0, S1, S2);

or_gate og(Y, outa0, outa1, outa2, outa3, outa4, outa5, outa6, outa7);

endmodule
