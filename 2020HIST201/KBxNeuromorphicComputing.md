---
title:  Neuromorphic Computing 
context: ML301
author:  Huxley
source:  #index
---

#flo #ref #ret #incomplete

---


# Final Exploration

Note: I did a dive into trying to label the axes of a word vector space, and I also tried to do some stuff with summarization models, but neither of those projects worked out within the time frame. Delegated to summer they go. Instead, here are my notes on 

## Neuromorphic Computing!

[Cool talk](https://www.youtube.com/watch?v=-dl1FPrpw1A&ab_channel=NeuroInspiredComputationalElementsWorkshop)


- Talks about autonomous drone racing
	- only possible recently due to tech limitations
	- Bird brain vs Drone "brain"
		- Parrot
			- 50mW, 2.2G
			- Can learn words
			- Can nav new environments at 35km/h
			- > Can learn to manipulate cups for drinking
	- Drone
		- 18000 mW, 40g
		- Pre trained flying at walking pace
		- > Can't learn anything online
	- Main idea is the birds adaptability
		- Can learn to "really understand what a cup can be useful for" despite it not being in its evolutionary past
		- way beyond current autonomous drones
	- We have a lot to learn from nature!
- Deep learning is very power hungry
	- increasingly so -- grew by 300,000x in the last 6 years
	- not on a trajectory to close the gap with the parrot!
- Deep learning has slow generalization 
	- Training currently is mostly offline and batched
	- example of a child looking at a few pictures of a cat: they can now easily tell what is a cat, and can even recognize cartoons of a cat.

- looking to the brain!
	- they implemented neural networks with temporal states in each neuron
		- with some course of evolution
	- current tools break down on these new models
		- arn't differentiable, cant do stochastic descent, ect.

- motivates a different type of computing?
	- memory elements is embedded in the synaptic neurons
	- redefines what is efficient
		- conventional is forced into vectorized approach

- their new chip doesn't have floating point numbers, multiply accumulators, or off-chip DRAM
	- but they can do all this amazing stuff
		- highlights that they are genuinely operating in a totally different paradigm
		
- results!
	- sensing domain
		- in spiking event based paradigm
		- IO no longer a bottleneck
		- can natively send event from sensor to chip, can do gesture reg with just 15mW for both the camera and chip combined
		- early new live learning
		- 































