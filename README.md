# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Geordie Baksheeff

## Summary

Learning how to implement memory in a digital circuit using d-latchs and basic registry/memory addressing using multiplex/demultiplexs

## Lab Questions


###  Why can we not just use structural Verilog to implement latches?

We can't use it because the latch relies on a combinatorial loop to work. By switching it to a behavioral condition it allows Verilog to do the work required for the latch's loop to work without any additional input from the user.

### What is the meaning of always @(*) in a sensitivity block?


### What importance is memory to digital circuits?
Being able to store a value is the first step to creating a proper computer. It allows us to save and read a value for future use without having to manually setting switches/pressing buttons.
