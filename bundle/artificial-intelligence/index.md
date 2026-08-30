# Artificial intelligence

## Model foundations

* [Artificial intelligence](artificial-intelligence.md) - Systems that produce recommendations, predictions, decisions, or other outputs that influence an environment toward objectives.
* [Machine learning](machine-learning.md) - Training models from data so they can produce useful predictions or generated outputs on new inputs.
* [Machine-learning paradigms](learning-paradigms.md) - Distinguishing supervised, unsupervised, self-supervised, and reinforcement learning by how training signals are obtained and used.
* [Reinforcement-learning feedback loop](reinforcement-learning-feedback-loop.md) - Learning a policy through repeated interaction with an environment, actions, observations, and outcome feedback.
* [Model training](model-training.md) - Adjusting a model using data and an objective so it performs a task under a stated evaluation procedure.
* [Training objectives and signals](training-objectives-and-signals.md) - Criteria and feedback values that specify what a machine-learning training activity should improve.
* [Optimization and parameter updates](optimization-and-parameter-updates.md) - Adjusting a model's parameters to improve a training objective while respecting computational and evaluation limits.
* [Gradients and backpropagation](gradients-and-backpropagation.md) - Computing objective sensitivity through a model's operations so training can update its parameters.
* [Generalization and model evaluation](generalization-and-model-evaluation.md) - Assessing how well a trained model performs beyond its training examples under stated data, metrics, and uncertainty.
* [Prediction tasks and model metrics](prediction-tasks-and-model-metrics.md) - Relating prediction targets and decision outputs to task-specific metrics, thresholds, ranking, calibration, and bounded evaluation claims.
* [Model inference](model-inference.md) - Applying a trained model to an input in context to produce a prediction or generated output.
* [Embeddings and vector representations](embeddings-and-vector-representations.md) - Learned or constructed numerical representations that place data in a task-shaped vector space for computation and comparison.

## Language models

* [Large language models](large-language-models.md) - Machine-learning models trained on large text corpora to estimate and generate sequences of language tokens.
* [Tokenization and language sequences](tokenization-and-language-sequences.md) - Representing language as vocabulary items arranged in sequences so a language model can condition and decode predictions.
* [Language-model decoding](language-model-decoding.md) - Selecting and stopping generated token sequences from a language model's conditional predictions.
* [Transformer attention architecture](transformer-attention-architecture.md) - A layered sequence-model architecture that relates positions with attention and preserves order with positional information.

## Retrieval and context

* [Retrieval and external context](retrieval-and-external-context.md) - Selecting, ranking, and supplying external information to models and agents while preserving context, memory, and provenance boundaries.

## Adaptation and alignment

* [Language-model adaptation stages](language-model-adaptation-stages.md) - Comparing unsupervised pretraining, supervised instruction tuning, and preference-based adaptation under bounded evaluation conditions.
* [Preference learning and reward modeling](preference-learning-and-reward-modeling.md) - Turning comparative judgments into proxy rewards or direct preference objectives while preserving disagreement and generalization limits.

## Agents

* [Agents](agents.md) - Goal-directed systems that observe context, select actions, and act within an environment under constraints.
* [Agent control loops and tool use](agent-control-loops-and-tool-use.md) - Coordinating plans, model calls, tool actions, observations, verification, retries, and human approval within an agent boundary.

## Evaluation

* [AI system evaluation and risk management](ai-system-evaluation-and-risk-management.md) - Evaluating AI systems in context and managing risks across their lifecycle.
* [Responsible AI evaluation and impact](responsible-ai-evaluation-and-impact.md) - Evaluating trustworthiness, affected-party impacts, and residual risk in a stated context.

## Sources

* [ReAct: Synergizing Reasoning and Acting in Language Models](../references/react-2023.md) - ICLR 2023 paper proposing interleaved language-model reasoning and task-specific actions for interactive problem solving.
* [Attention Is All You Need](../references/attention-is-all-you-need.md) - NeurIPS 2017 paper introducing the Transformer architecture based on attention rather than recurrence or convolution.
