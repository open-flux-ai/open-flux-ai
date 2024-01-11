# Open Flux AI

_Open Flux AI - Empowering developers with AI-driven Continuous Delivery solutions._

Welcome to Open Flux AI, a community initiative stemming from the Kube-7B project, 
dedicated to advancing AI expertise in Flux, Flagger, and Continuous Delivery technologies.
Our mission is to use the power of AI to simplify and enhance the way developers interact with Flux and technologies around it.

Our first focus is on fine-tuning AI models to specialize in key areas such as Flux, Flagger, GitOps, and SOPS.
By leveraging the raw data from Kube-7B and applying targeted Embedding techniques, we aim to create models that are highly proficient in these specific domains.

Our first major deliverable is `flux-7b`, a model based on Mistral 7B. `flux-7b` currently understands the basic knowledge of Flux, Flagger, GitOps, and SOPS.
`flux-7b` has demonstrated to be better than ChatGPT in these contexts. See the screenshot.

![g245](https://github.com/chanwit/open-flux-ai/assets/10666/5c2bf254-a1a6-4fde-9b24-8c3fbcda268c)

## Getting Started

To begin using `flux-7b`, follow this simple command:

```
ollama run chanwit/flux-7b
```

The GGUF files of this model can be obtained from [HuggingFace](https://huggingface.co/chanwit/flux-7b-v0.1-gguf/tree/main).

We are planning to delivery our models in other formats like Llamafiles and Docker Containers. Please stay tuned.

## Models

  * `flux-7b`: Our first model, built on Mistral 7B, is designed to provide assistance in Flux, Flagger, GitOps, and SOPS.

## Datasets

At the beginning, the Open Flux AI project shares its foundational dataset with the Kube-7B project but refines it to focus on specific areas.
We continuously work on expanding our dataset, especially in areas like Flux commands and Custom Resources, to further enhance the model's capabilities.

# Contributions

We welcome and greatly appreciate contributions, especially in the form of question and answer pairs.
We are seeking contributions for new datasets centered around knowledge of Flux commands and CR generations.
