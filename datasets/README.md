# Flux Command Dataset for Flux-7B

Thank you for your interest in contributing to the open-flux-ai dataset.
flux-7b is an evolving model dedicated to enhancing knowledge and understanding of Flux.
Our mission is to create a comprehensive and accurate dataset that will serve as the foundation for DPO finetune the next versions of the flux-7b model.

## Goal

The goal of this dataset is to cover all Flux CLI commands with 2-3 examples for each command.

## How You Can Help

We are actively seeking contributors who can provide high-quality question and answer pairs, as well as their associated rejected or incorrect answers. 
These contributions are crucial for improving the breadth and depth of Flux-7b's understanding and ability to assist users with Flux-related queries.

## What We're Looking For

Questions & Answers: Original, well-structured questions about Flux CLI, accompanied by accurate and informative answers.
Rejected Answers: Incorrect or misleading answers that help the model learn from mistakes and understand common misconceptions.
Please use the following format:

```
Q: <question>
A: <answer>
R: <wrong answer>

Q: <next question>
```

Please also note that there must be an extra newline between each block of QAR. 
Now, with the availability of Mixtral 8x7B, synthesizing QARs is possible.
However, please note that we do not accept QARs generated directly by ChatGPT or GPT-4. 
