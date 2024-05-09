This repository is a fork from 
Zip CPU located at https://github.com/ZipCPU/dpll
The repository owner also as a website here: (http://zipcpu.com)

My changes here in the code are minor and mainly to help me with the understanding
of the PLL code. Comments and variable name may change and structure
of io port may also change that is not inline with how the original
code is written. This is mainly to help clear some of my confusion. 
Please feel free to support ZipCPU.com there is some excellent work there. 

I'd like to [post](http://zipcpu.com) about some simple and some basic
[Phase Locked Loop](https://en.wikipedia.org/wiki/Phase-locked_loop) algorithms.
To do this I'm going to need some demo code, which I'll keep in this repository.

## Blog posts

I recently [posted](http://zipcpu.com) two articles describing the components
of a basic [PLL](https://en.wikipedia.org/wiki/Phase-locked_loop), and hence
the implementation found in this repository.  These are:

1. [How to build a Numerically Controlled Oscillator (NCO)](http://zipcpu.com/dsp/2017/12/09/nco.html) within an [FPGA](https://en.wikipedia.org/wiki/Field-programmable_gate_array).

2. [The Logic PLL](http://zipcpu.com/dsp/2017/12/14/logic-pll.html) based upon the code in [rtl/sdpll.v](rtl/sdpll.v).

If the [Lord is
willing](https://www.blueletterbible.org/kjv/jas/4/15/), I may go deeper
and describe some other 
[PLL](https://en.wikipedia.org/wiki/Phase-locked_loop) implementations as
well--such as the sample time tracking PLL that I recently added.

## Tutorial slides

I placed a quick/short set of [tutorial slides](doc/tutoria.pdf) in the
[doc/](doc/) directory.  Feel free to browse them and see what you think.

## License

All of the source code in this repository is released under the
[GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html).  If these conditions
are not sufficient for your needs, other licenses terms may be purchased.
