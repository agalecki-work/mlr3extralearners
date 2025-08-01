% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/learner_lightgbm_regr_lightgbm.R
\name{mlr_learners_regr.lightgbm}
\alias{mlr_learners_regr.lightgbm}
\alias{LearnerRegrLightGBM}
\title{Regression LightGBM Learner}
\description{
Gradient boosting algorithm.
Calls \code{\link[lightgbm:lightgbm]{lightgbm::lightgbm()}} from \CRANpkg{lightgbm}.
The list of parameters can be found \href{https://lightgbm.readthedocs.io/en/latest/Parameters.html#}{here}
and in the documentation of \code{\link[lightgbm:lgb.train]{lightgbm::lgb.train()}}.
}
\section{Dictionary}{

This \link[mlr3:Learner]{Learner} can be instantiated via \link[mlr3:mlr_sugar]{lrn()}:

\if{html}{\out{<div class="sourceCode">}}\preformatted{lrn("regr.lightgbm")
}\if{html}{\out{</div>}}
}

\section{Meta Information}{

\itemize{
\item Task type: \dQuote{regr}
\item Predict Types: \dQuote{response}
\item Feature Types: \dQuote{logical}, \dQuote{integer}, \dQuote{numeric}, \dQuote{factor}
\item Required Packages: \CRANpkg{mlr3}, \CRANpkg{mlr3extralearners}, \CRANpkg{lightgbm}
}
}

\section{Parameters}{
\tabular{lllll}{
   Id \tab Type \tab Default \tab Levels \tab Range \cr
   objective \tab character \tab regression \tab regression, regression_l1, huber, fair, poisson, quantile, mape, gamma, tweedie \tab - \cr
   eval \tab untyped \tab - \tab  \tab - \cr
   verbose \tab integer \tab 1 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   record \tab logical \tab TRUE \tab TRUE, FALSE \tab - \cr
   eval_freq \tab integer \tab 1 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   callbacks \tab untyped \tab - \tab  \tab - \cr
   reset_data \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   boosting \tab character \tab gbdt \tab gbdt, rf, dart, goss \tab - \cr
   linear_tree \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   learning_rate \tab numeric \tab 0.1 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   num_leaves \tab integer \tab 31 \tab  \tab \eqn{[1, 131072]}{[1, 131072]} \cr
   tree_learner \tab character \tab serial \tab serial, feature, data, voting \tab - \cr
   num_threads \tab integer \tab 0 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   device_type \tab character \tab cpu \tab cpu, gpu \tab - \cr
   seed \tab integer \tab - \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   deterministic \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   data_sample_strategy \tab character \tab bagging \tab bagging, goss \tab - \cr
   force_col_wise \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   force_row_wise \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   histogram_pool_size \tab integer \tab -1 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   max_depth \tab integer \tab -1 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   min_data_in_leaf \tab integer \tab 20 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   min_sum_hessian_in_leaf \tab numeric \tab 0.001 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   bagging_fraction \tab numeric \tab 1 \tab  \tab \eqn{[0, 1]}{[0, 1]} \cr
   bagging_freq \tab integer \tab 0 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   bagging_seed \tab integer \tab 3 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   bagging_by_query \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   feature_fraction \tab numeric \tab 1 \tab  \tab \eqn{[0, 1]}{[0, 1]} \cr
   feature_fraction_bynode \tab numeric \tab 1 \tab  \tab \eqn{[0, 1]}{[0, 1]} \cr
   feature_fraction_seed \tab integer \tab 2 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   extra_trees \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   extra_seed \tab integer \tab 6 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   max_delta_step \tab numeric \tab 0 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   lambda_l1 \tab numeric \tab 0 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   lambda_l2 \tab numeric \tab 0 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   linear_lambda \tab numeric \tab 0 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   min_gain_to_split \tab numeric \tab 0 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   drop_rate \tab numeric \tab 0.1 \tab  \tab \eqn{[0, 1]}{[0, 1]} \cr
   max_drop \tab integer \tab 50 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   skip_drop \tab numeric \tab 0.5 \tab  \tab \eqn{[0, 1]}{[0, 1]} \cr
   xgboost_dart_mode \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   uniform_drop \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   drop_seed \tab integer \tab 4 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   top_rate \tab numeric \tab 0.2 \tab  \tab \eqn{[0, 1]}{[0, 1]} \cr
   other_rate \tab numeric \tab 0.1 \tab  \tab \eqn{[0, 1]}{[0, 1]} \cr
   min_data_per_group \tab integer \tab 100 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   max_cat_threshold \tab integer \tab 32 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   cat_l2 \tab numeric \tab 10 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   cat_smooth \tab numeric \tab 10 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   max_cat_to_onehot \tab integer \tab 4 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   top_k \tab integer \tab 20 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   monotone_constraints \tab untyped \tab NULL \tab  \tab - \cr
   monotone_constraints_method \tab character \tab basic \tab basic, intermediate, advanced \tab - \cr
   monotone_penalty \tab numeric \tab 0 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   feature_contri \tab untyped \tab NULL \tab  \tab - \cr
   forcedsplits_filename \tab untyped \tab "" \tab  \tab - \cr
   refit_decay_rate \tab numeric \tab 0.9 \tab  \tab \eqn{[0, 1]}{[0, 1]} \cr
   cegb_tradeoff \tab numeric \tab 1 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   cegb_penalty_split \tab numeric \tab 0 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   cegb_penalty_feature_lazy \tab untyped \tab - \tab  \tab - \cr
   cegb_penalty_feature_coupled \tab untyped \tab - \tab  \tab - \cr
   path_smooth \tab numeric \tab 0 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   interaction_constraints \tab untyped \tab - \tab  \tab - \cr
   use_quantized_grad \tab logical \tab TRUE \tab TRUE, FALSE \tab - \cr
   num_grad_quant_bins \tab integer \tab 4 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   quant_train_renew_leaf \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   stochastic_rounding \tab logical \tab TRUE \tab TRUE, FALSE \tab - \cr
   serializable \tab logical \tab TRUE \tab TRUE, FALSE \tab - \cr
   max_bin \tab integer \tab 255 \tab  \tab \eqn{[2, \infty)}{[2, Inf)} \cr
   max_bin_by_feature \tab untyped \tab NULL \tab  \tab - \cr
   min_data_in_bin \tab integer \tab 3 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   bin_construct_sample_cnt \tab integer \tab 200000 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   data_random_seed \tab integer \tab 1 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   is_enable_sparse \tab logical \tab TRUE \tab TRUE, FALSE \tab - \cr
   enable_bundle \tab logical \tab TRUE \tab TRUE, FALSE \tab - \cr
   use_missing \tab logical \tab TRUE \tab TRUE, FALSE \tab - \cr
   zero_as_missing \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   feature_pre_filter \tab logical \tab TRUE \tab TRUE, FALSE \tab - \cr
   pre_partition \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   two_round \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   forcedbins_filename \tab untyped \tab "" \tab  \tab - \cr
   boost_from_average \tab logical \tab TRUE \tab TRUE, FALSE \tab - \cr
   reg_sqrt \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   alpha \tab numeric \tab 0.9 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   fair_c \tab numeric \tab 1 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   poisson_max_delta_step \tab numeric \tab 0.7 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   tweedie_variance_power \tab numeric \tab 1.5 \tab  \tab \eqn{[1, 2]}{[1, 2]} \cr
   metric_freq \tab integer \tab 1 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   num_machines \tab integer \tab 1 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   local_listen_port \tab integer \tab 12400 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   time_out \tab integer \tab 120 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   machines \tab untyped \tab "" \tab  \tab - \cr
   gpu_platform_id \tab integer \tab -1 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   gpu_device_id \tab integer \tab -1 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   gpu_use_dp \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   num_gpu \tab integer \tab 1 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   start_iteration_predict \tab integer \tab 0 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   num_iteration_predict \tab integer \tab -1 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   pred_early_stop \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   pred_early_stop_freq \tab integer \tab 10 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   pred_early_stop_margin \tab numeric \tab 10 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   num_iterations \tab integer \tab 100 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   early_stopping_rounds \tab integer \tab - \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   early_stopping_min_delta \tab numeric \tab - \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   first_metric_only \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
}
}

\section{Initial parameter values}{

\itemize{
\item \code{num_threads}:
\itemize{
\item Actual default: 0L
\item Initital value: 1L
\item Reason for change: Prevents accidental conflicts with \code{future}.
}
\item \code{verbose}:
\itemize{
\item Actual default: 1L
\item Initial value: -1L
\item Reason for change: Prevents accidental conflicts with mlr messaging system.
}
}
}

\section{Early Stopping and Validation}{

Early stopping can be used to find the optimal number of boosting rounds.
Set \code{early_stopping_rounds} to an integer value to monitor the performance of the model on the validation set while training.
For information on how to configure the validation set, see the \emph{Validation} section of \code{\link[mlr3:Learner]{mlr3::Learner}}.
The internal validation measure can be set the \code{eval} parameter which should be a list of \link[mlr3:Measure]{mlr3::Measure}s, functions, or strings for the internal lightgbm measures.
If \code{first_metric_only = FALSE} (default), the learner stops when any metric fails to improve.
}

\examples{
\dontshow{if (mlr3misc::require_namespaces(lrn("regr.lightgbm")$packages, quietly = TRUE)) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
# Define the Learner
learner = mlr3::lrn("regr.lightgbm")
print(learner)

# Define a Task
task = mlr3::tsk("mtcars")

# Create train and test set
ids = mlr3::partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
print(learner$importance())

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
\dontshow{\}) # examplesIf}
}
\references{
Ke, Guolin, Meng, Qi, Finley, Thomas, Wang, Taifeng, Chen, Wei, Ma, Weidong, Ye, Qiwei, Liu, Tie-Yan (2017).
\dQuote{Lightgbm: A highly efficient gradient boosting decision tree.}
\emph{Advances in neural information processing systems}, \bold{30}.
}
\seealso{
\itemize{
\item \link[mlr3misc:Dictionary]{Dictionary} of \link[mlr3:Learner]{Learners}: \link[mlr3:mlr_learners]{mlr3::mlr_learners}.
\item \code{as.data.table(mlr_learners)} for a table of available \link[mlr3:Learner]{Learners} in the running session (depending on the loaded packages).
\item Chapter in the \href{https://mlr3book.mlr-org.com/}{mlr3book}: \url{https://mlr3book.mlr-org.com/basics.html#learners}
\item \CRANpkg{mlr3learners} for a selection of recommended learners.
\item \CRANpkg{mlr3cluster} for unsupervised clustering learners.
\item \CRANpkg{mlr3pipelines} to combine learners with pre- and postprocessing steps.
\item \CRANpkg{mlr3tuning} for tuning of hyperparameters, \CRANpkg{mlr3tuningspaces} for established default tuning spaces.
}
}
\author{
kapsner
}
\section{Super classes}{
\code{\link[mlr3:Learner]{mlr3::Learner}} -> \code{\link[mlr3:LearnerRegr]{mlr3::LearnerRegr}} -> \code{LearnerRegrLightGBM}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{internal_valid_scores}}{The last observation of the validation scores for all metrics.
Extracted from \code{model$evaluation_log}}

\item{\code{internal_tuned_values}}{Returns the early stopped iterations if \code{early_stopping_rounds} was set during training.}

\item{\code{validate}}{How to construct the internal validation data.
This parameter can be either \code{NULL}, a ratio, \code{"test"}, or \code{"predefined"}.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-LearnerRegrLightGBM-new}{\code{LearnerRegrLightGBM$new()}}
\item \href{#method-LearnerRegrLightGBM-importance}{\code{LearnerRegrLightGBM$importance()}}
\item \href{#method-LearnerRegrLightGBM-clone}{\code{LearnerRegrLightGBM$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="base_learner"><a href='../../mlr3/html/Learner.html#method-Learner-base_learner'><code>mlr3::Learner$base_learner()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="configure"><a href='../../mlr3/html/Learner.html#method-Learner-configure'><code>mlr3::Learner$configure()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="encapsulate"><a href='../../mlr3/html/Learner.html#method-Learner-encapsulate'><code>mlr3::Learner$encapsulate()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="format"><a href='../../mlr3/html/Learner.html#method-Learner-format'><code>mlr3::Learner$format()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="help"><a href='../../mlr3/html/Learner.html#method-Learner-help'><code>mlr3::Learner$help()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="predict"><a href='../../mlr3/html/Learner.html#method-Learner-predict'><code>mlr3::Learner$predict()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="predict_newdata"><a href='../../mlr3/html/Learner.html#method-Learner-predict_newdata'><code>mlr3::Learner$predict_newdata()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="print"><a href='../../mlr3/html/Learner.html#method-Learner-print'><code>mlr3::Learner$print()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="reset"><a href='../../mlr3/html/Learner.html#method-Learner-reset'><code>mlr3::Learner$reset()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="selected_features"><a href='../../mlr3/html/Learner.html#method-Learner-selected_features'><code>mlr3::Learner$selected_features()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="train"><a href='../../mlr3/html/Learner.html#method-Learner-train'><code>mlr3::Learner$train()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="LearnerRegr" data-id="predict_newdata_fast"><a href='../../mlr3/html/LearnerRegr.html#method-LearnerRegr-predict_newdata_fast'><code>mlr3::LearnerRegr$predict_newdata_fast()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LearnerRegrLightGBM-new"></a>}}
\if{latex}{\out{\hypertarget{method-LearnerRegrLightGBM-new}{}}}
\subsection{Method \code{new()}}{
Creates a new instance of this \link[R6:R6Class]{R6} class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LearnerRegrLightGBM$new()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LearnerRegrLightGBM-importance"></a>}}
\if{latex}{\out{\hypertarget{method-LearnerRegrLightGBM-importance}{}}}
\subsection{Method \code{importance()}}{
The importance scores are extracted from \code{lbg.importance}.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LearnerRegrLightGBM$importance()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Named \code{numeric()}.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LearnerRegrLightGBM-clone"></a>}}
\if{latex}{\out{\hypertarget{method-LearnerRegrLightGBM-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LearnerRegrLightGBM$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
