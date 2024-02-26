#set par(justify: true)
= ECE 3270 - Digital Computer Design - Dr. Ligon

= JAN 12 2024

ASIC: application specific integrated circuit

FPGA: Field programmable gate array

VHDL: hardware description language

textbook: digital design using vhdl a systems approach

room 309 room code: 327468

logical and physical specification
+ design entry types: 
    - truth tables, waveforms, state diagrams.
    - Schematic capture.
    - hardware description language. 

netlist mixed-mode synthesis

= JAN 17 2024

hierarchical design methodology involves creating segments of a product
that are designed with different tools at differeing levels of specificity. 

synthesizer cad tool takes specification/hardware description language
and creates design from the specification. 

Lab portion of the class involves using synthesizer on HDL code. 

schematic capture (drawing schematics) becomes untenable with larger and 
more complex designs

during process of synthesis, technology mapping involves putting specific hardware into design.

+ EDIF: Electronic Design interchange format. 

+ Functional Simulation is final step that verifies design. 
    - functional simulators assume the time needed for signals to propagate through the logic gates
    is nebligible. 

    - timing simulators must be used in tandem with functional simulators in order
    to obtain a complete test of the design. 

    - add timing bounds to portions of circuit: best, worst, typical
    this allows for testing with all possible operation timings. 

    - Use spice for specific timing measurements/edge cases. Spice uses
    numerical methods and has higher precision than simple digital logic simulators

    
    + Event-driven simulation:

        - Zero delay simulators will not detect race and hazard conditions.
        - Race condition: when two or more signals are changis simultaneously in 
            a circuit which may resuelt in an ein correct state when a condition is assumed to be stable.

        + Possible states in logic simulation:
        - 0
        - 1
        - U (unknown) 
        - Z (high impedance) Relevant with TSB (tri-state buffer) and TG (transmission gate)

        use reset or preset signal to set unknown back into a known state. 

    Mixed-mode simulation: logic and spice simulation together

= JAN 22 2024

+ Design -- Place and route -- Schematic Capture
    - pin data:
        + placement
        + electrical resistance
        + signal name
        + special flags

    - Routing
        + traditional : by gate
        + floor planning : by structure

    - Simulations to estimate real-world timing
        - identify critical paths
        - full logical simulation
        - full electrical simulation
        - leads to re-routing, or re-design


= Lecture 1: The Digital Abstraction, Combinational Logic. 
Associated reading: chapter 1, 3, 6

    - The Digital Abstraction
        - representation
        - noise

    - Low voltage CMOS logic:
    [Damage] -- -0.3V -- 0.0V -- 0.7V -- 1.7V -- 2.5V -- 2.8V [Damage]
    - 0.7 to 1.7 V is transition region for 2.5V CMOS logic. 

    - As opposed to analog systems, digital systems can:
        - Process, transport, and store info without noise distorion.
        - Possible because the signals are discrete
        - No loss of informmation with added noise until the noise becomes large enough to push the signal our of the valid range
    - Digital signals are periodically restored to keep them in the vaoid range using a buffer.
    - In analog systems, since all voltages are valid signals there is no way to restore the signal to a noiseless state between operations.
    - Analog systems also limited in precision
        - Accuracy is limited by the background noise.

    //#circle(radius: 10pt)

    - All resotring logic devices guarantee that the outputs fall into a range that is narrower than the input range
    - Larger noise margins are not necessarily better. 

    $ V_(N M H) = V_( O H) - V_(I H)$

= Jan 24 2024G
 - Combinational logic means that logical outputs are based soley on inputs, not state or memory.
    - closed under acyclic composition ( as long as a feedback loop is not created when composing combinational logic circuits, then the composition is still combinational)
    - combinational, not combinatorial
 - Sequential logic depends on memory and state.

- More than one possible logic equation for a given truth table. 

- Demorgans law: $ not (x and y) = not x or not y -> not ( x or y) = not x and not y $

 - Hazards:
    - Hazards occur when changing from one implicant to another
    - Internal timing delays may cause undefined behavior.
    - Prime implicants on k-map.
    - Make circuits hazard-free by adding redundant implicants to cover transitions.
    - Types of hazards: static, dynamic, functional
    - Hazards also occur in sequential circuits. 

 - Chapter 7 + appendix A+B: VHDL:

= Jan 29 2024 -- VHDL syntax


- Explicit declaration
- CONSTANT bus_width : INTEGER := 32;
- CONSTANT rise_delay : TIME := 20ns;
- VARIABLE data_val : STD_LOGIC_VECTOR(7 DOWNTO 0);
- VARIABLE sum : INTEGER RANGE 0 to 100;
- VARIABLE done : BOOLEAN;
- SIGNAL clock : STD_LOGIC;
- SIGNAL addr_bus : STD_LOGIC_VECTOR (31 DOWNTO 0);

Component Instantiation:
- introduces a relationship to a component declaration.
- port map maybe either named or positional. 

named:
reg5 : fill_reg
port map ( clk => clk, 
    rst => rst, 
    write => write_comp,
    read => readout,
    data_in => dataout_comp,
    FFout => FFOut,
    data_out => datareg5_out);

positional:

port map ( clk, 
    rst, 
    write_comp,
    readout,
    dataout_comp,
    FFout,
    datareg5_out);

    logical operators do not bind or have precedence except for the not operator.

 & - Concatenation operator for strings. String is any sequence of characters.

 VHDL identifier rules:
 - letters, digits, underscores only
 - The last character cannot be an underscore 
 - two underscores in succession are not allowed
 - using reserved words is not allowed.


+ Combinational design entities use only
  + concurent assignment statements
  + Case or Case? statements (with "when others =>")
  + if statements - only if all signalsa have a default assignment
  + instantiations of other combinational modules.
+ Sequential desing entitites use only 
  + Combinational logic
  + Explicitly declared register (flip-flops)
+ Do not use
  + Loops
  + Provess except for case, casex, or if
+ Do use
  + Signal slices e.g., a(7 downto 1) = b(6 downto 0);
+ Logic is organized into small design entities. 
  + Leaf design entities not more than 40 lines
  + If it could be made two design entities, if should be. 
+ Use lots of comments
  + Comments
  + Meaningful signal names - tempHigh, not th
  + Meaningful module names - DaysInMonth not mod3
+ Constants
  + All constants explicitly defined if used nore than once
+ Signals
  + Bused (multi-bit signals) are numbered high to low
    - e.g., bus(31 downto 0)
  + All signals should be high-true (except primary inputs and outputs)
+ Visualize the logic your VHDL will generate.
  + if you can't visualize it, the result will not be pretty

= January 31 2024

+ What is a VHDL process?
  + proecesses are either awake or asleep
  + A process normally has a sensitivity list 
    + When a signal in that sensitivity list changes value, the process wakes up and all of the sequentil statments are "executed"
    + for example, a process witha  clock signal in its sensitivity list will become active on changes of the clock signal
    + At the end of the process, all outputs are assigned and the process goes back to sleep until the next time a signal changes in the sensitivity list. 

+ Process
  + If no sensitivity list is given, then wait statements must be used in the process
+ Multiple statements can execute concurrently
+ The statements describing the behavior are executed sequentially
  + This is true from a simulation standpoint
  + From a synthesized hardware point-of-view, multiple assignments to a single signal (variable) generally implies multiplexing of the assignments to produce a signal output
+ Assignments made inside the process are not visivle outside of it. 

+ process
```rust
begin 
  wait for 15 ns;
  clk <= not(clk);
end process;

process(clk, rst)
begin
  if rst = '1'; then
    readout <= '0';
  elsif (clk'event and clk = '1') then
    if(fout = '1') then
      readout <= '1';
    else
      readout <= '0';
    end if;
  end if;
end process;
```

+ clk'event is attribute of clk
+ when writing a <= b and b <= c updates happen at end of process 
+ concurrent means nonprocedural (no in a process statement)
  + The order in which the CSA statements appear textually has nothing to do with the order in which they execute
  + They execute at the same time essentially
  + Concurrency is fundamental to hardware and VHDL, think in terms of parallel signal transforms


```rust
with s select
  x <= a when "00",
    b when "01",
    c when "10",
    d when "11";

with int_value select
  x <= a when 0 to 3, 
    b when 4 | 6 | 8,
    c when 10,
    d when others;
    ```

= Feb 2 2024

```rust
signal_name <= value_1 WHEN condition1 ELSE
  value_2 WHEN condition2 ELSE
  ...
  value_n WHEN conditionN ELSE
  value_x;
```

```rust
x <= a when (s = "00") else
  b when (s = "01") else
  c when (s = "10") else
  d;
```

= Feb 5 2024 -- Testbench examples -- end of first midterm material

```rust
// & operator is string concatenation
//  
  report "input = " & to_string(to_integer(unsigned(input))) &
    " isprime = " & to_string(isprime);

    // empty testbench
    entity testbench is
    end testbench

architecture test+adder of testbench is
  signal clk : std_logic := '0';
  signal rst : std_logic := '0';

  signal a : std_logic_vector(4 downto 0);
  signal b : std_logic_vector(4 downto 0);
  signal c : std_logic_vector(4 downto 0);

  begin
  dut : entity adder
    port map( in1 => a, in2 => b, out1 => c);

  //process for simulating the clock
  //
  process
  begin
    clk <= not(clk);
    wait for 20ns;
    end process;

  //This process does the RESET
  
  process
  begin
    rst <= '1';
    wait for 53ns;
    rst <= '0';
    wait until(rst'event and rst = '1');
    //stops this process from happening again (this is an initial)
  end process;
```
- VHDL supports generics
- An aggregate is a collection of items that are gathere together to form a total quantity
```rust
v <= (others => '0');
v <= ('1', '0', others => '0'); // "00000000"
v <= (4 => '1', others => '0'); // "00010000"
v <= ( 3 DOWNTO 0 => '0', others => '1'); // "11110000"

//example generics

ENTITY counters IS
GENERIC ( WIDTH: INTEGER := 8);
  PORT(
    d : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
    clk: IN STD_LOGIC;
    clear: IN STD_LOGIC;
    load: IN STD_LOGIC;
    up_down : IN STD_LOGIC;
    qd : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
  )
```
- For any instances of a component, use FOR GENERATE
- This instantiates an object in each loop, which can help you create many numbers of similar components
- no breaks, not actual loop

= Feb 7 2024 -- Review Day

-Multi state logic: 0, 1, U Z+, Z-

Z+ input comes from floating output closer to a 1, Z- floatint output closer to a zero
weak 1 vs weak 0

Tristate buffer:

VHDL overall layout

entity - parts specification
architecture - actual logic description.
process is piece that goes into architecture.
behavioral, structural, dataflow. process is behavioral.
switch level simulation - hybrid electrical and event driven simulation.
mixed mode - is another hybrid simulation but ususally has 2 seperate simulations running in tandem. 
rise/fall time vs rise/fall delay --
testbench
variables are not signals, cannot be assigned to ports or sensitivity list, etc. 
do as much as you can without variables. := assignment, <= continuous assignment

```rust
process(clk, rst)
  if(rst) then q <= 0;
  else if(clk'event = 1 and clk = 1) then q <= d;
  end;
end;
```

= Feb 12 2024 -- VHDL/CMOS

- State machine might show up on final.
- gtkwave
- glhdl

= Feb 16 2024 -- CMOS

- AOI - AND OR INVERT
- OAI - OR AND INVERT

- AND and OR cannot be implemented directly by cmos logic, NAND and NOR can be however. 

- Be able to determine types of equations from diagrams and diagrams from equations.

- n-type and p-type transistor back to back is tristate buffer/inverter.
- parasitic capacitance and dynamic operation
  - Rise/Fall time
  - Parasitic capacitance negatively affects speed. Time to charge/discharge capacitors. 

- Propogation delay is time between 50% of "swing" of one signal and the 50% swing of another.

- reminder: capacitance from dielectric is gate capacitance.

- Fan in vs Fan out
 - fan in : number of inputs to a gate
 - fan out: number of outputs to a gate 4-5 is a pretty reasonable limit for fan out.

 = Feb 19 2024 -- CMOS Part 2

- Common fan-out issue is driving large number of chips, as number of chips gets larger the capacitance
 of each gate needs to be dealt with. 
- High fan-in side effects (series):
  - Increases output resistance or equivalently input capacitances which leades to larger propagation delay.
  - Increases $V_(O L)$ reducing noise margin.
- High fan-in effects (parallel):
  - Increases load capacitances at gate output -> larger propagation delay
  - unlikely all transistors would turn on when $V_f$ changes from high to low

  - Logical Effort is a term that describes a metric to determine the delay in CMOS circuits.

  - Circuit Delay can be calculated from the fanout and the logical effort of a circuit

  - To compute the max delay, determine the longest path then multiply logical effort by the 
  fan out 

  - Wire Delay: in modern integrated circuits, large fraction of delay and power are due to driving
  wires that connect components. A long chip wire has significant series resistance and parallel capacitance
    - results in unacceptable delay and rise time
    - increasing the drive capacity of X does not help due to the resistivity of the line
    - using repeaters at fixed intervals can make delay linear. 

  - Most energy dissipation in modern IC's comes from charging and discharging gate and wire capacitance.
  - Energy consumption is dominated by the largest gate in the path

  - Power = $ 0.5 C V^2 f alpha$

  - Due to shrinking gate lengths and lower supply power has become significant. 
  - As the threshold voltage decreases, the amount of leakage current increases exponentially.

  - CMOS capacitance scales with L for constan supply voltage, energy of a module also scales w/l
  - Energy density of a chip thus increases as 1/L
  - Worse scaling with frequency increases -- factor of $ 1/L^2 $

  - Current solution is parallelism, multiple CPUs on one chip.

  = Feb 19 2024 -- Programmable Logic 

  - General purpose building blocks:
    - Decoder
    - Encoder
    - Multiplexer
    - Arbiter
    - Comparator
    - Read-only memories

  - One-Hot encoding:
    - One bit in a binary number represents one element. Only one bit may be a 1 at any time.

  = Feb 21 2024


  - Decoder - device that converts symbols from one code to another
  - a binary to one-hot decoder converts a symbol from binary code to a one-hot code
  - larger decoders can be built from several smaller decoders.
  - 6 -> 64 bit decoder requires 64 6-input AND gates (384 inputs)
  - 6 ->64 decoder using 2->4 decoders requires: 12 2-input AND gates (24 inputs), 64 3-input AND gates (192 inputs)
  - faster, smaller, lower power.


  = Feb 26 2024

  - 3 input look up table: 256 functions programmable for 8 bits.

  - PLDs and PLAs are tied to output pins in hardware, whereas FPGAs can have any function
  routed to any pin. 








