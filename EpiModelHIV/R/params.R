
# MSM -----------------------------------------------------------------

#' @title Epidemic Model Parameters
#'
#' @description Sets the epidemic parameters for stochastic network models
#'              simulated with \code{\link{netsim}} for EpiModelHIV
#'
#' @param nwstats Target statistics for the network model. An object of class
#'        \code{nwstats} output from \code{\link{calc_nwstats_msm}}.
#' @param race.method Number of races in the model, with options of 1 or 2. If
#'        1, then race-specific parameters will be averaged.
#' @param last.neg.test.B.int Time range in days for last negative test for
#'        black men.
#' @param mean.test.B.int Mean intertest interval in days for black MSM who test.
#' @param last.neg.test.W.int Time range in days for last negative test for
#'        white men.
#' @param mean.test.W.int Mean intertest interval in days for white MSM who test.
#' @param testing.pattern Method for HIV testing, with options \code{"memoryless"}
#'        for constant hazard without regard to time since previous test, or
#'        \code{"interval"} deterministic fixed intervals.
#' @param test.window.int Length of the HIV test window period in days.
#' @param tt.traj.B.prob Proportion of black MSM who enter one of four
#'        testing/treatment trajectories: never test or treat, test and never
#'        initiate treatment, test and treated with partial viral suppression,
#'        and test and treated with full suppression.
#' @param tt.traj.W.prob Proportion of white MSM who enter into the four
#'        testing/treatment trajectories, as defined above.
#' @param tx.init.B.prob Probability per time step that a black MSM who has
#'        tested positive will initiate treatment.
#' @param tx.init.W.prob Probability per time step that a white MSM who has
#'        tested positive will initiate treatment.
#' @param tx.halt.B.prob Probability per time step that a black MSM who is
#'        currently on treatment will halt treatment.
#' @param tx.halt.W.prob Probability per time step that a white MSM who is
#'        currently on treatment will halt treatment.
#' @param tx.reinit.B.prob Probability per time step that a black MSM who is
#'        not currently on treatment but who has been in the past will
#'        re-initiate treatment.
#' @param tx.reinit.W.prob Probability per time step that a white MSM who is
#'        not currently on treatment but who has been in the past will
#'        re-initiate treatment.
#' @param max.time.off.tx.full.int Number of days off treatment for a full
#'        suppressor before onset of AIDS, including time before diagnosis.
#' @param max.time.on.tx.part.int Number of days on treatment for a
#'        partial suppressor beofre onset of AIDS.
#' @param max.time.off.tx.part.int Nnumber of days off treatment for a
#'        partial suppressor before onset of AIDS, including time before
#'        diagnosis.
#' @param vl.acute.rise.int Number of days to peak viremia during acute
#'        infection.
#' @param vl.acute.peak Peak viral load (in log10 units) at the height of acute
#'        infection.
#' @param vl.acute.fall.int Number of days from peak viremia to set-point
#'        viral load during the acute infection period.
#' @param vl.set.point Set point viral load (in log10 units).
#' @param vl.aids.onset.int Number of days to AIDS for a treatment-naive
#'        patient.
#' @param vl.aids.int Duration of AIDS stage infection in days.
#' @param vl.fatal Viral load in AIDS at which death occurs.
#' @param vl.full.supp Log10 viral load at full suppression on ART.
#' @param vl.part.supp Log10 viral load at partial suppression on ART.
#' @param full.supp.down.slope For full suppressors, number of log10 units that
#'        viral load falls per time step from treatment initiation or re-initiation
#'        until the level in \code{vl.full.supp}.
#' @param full.supp.up.slope For full suppressors, number of log10 units that
#'        viral load rises per time step from treatment halting until expected
#'        value.
#' @param part.supp.down.slope For partial suppressors, number of log10 units
#'        that viral load falls per time step from treatment initiation or
#'        re-initiation until the level in \code{vl.part.supp}.
#' @param part.supp.up.slope For partial suppressors, number of log10 units that
#'        viral load rises per time step from treatment halting until expected value.
#' @param b.B.rate Rate at which black MSM enter the population.
#' @param b.W.rate Rate at which white MSM enter the population.
#' @param birth.age Age (in years) of new arrivals.
#' @param b.method Method for calculating the number of expected births at each
#'        time step, with \code{"fixed"} based on the number of persons at the
#'        initial time step and \code{"varying"} based on the current time step.
#' @param URAI.prob Probability of transmission for a man having unprotected
#'        receptive anal intercourse with an infected man at set point viral
#'        load.
#' @param UIAI.prob Probability of transmission for an uncircumcised man having
#'        unprotected insertive anal intercourse with an infected man at set
#'        point viral load.
#' @param acute.rr Relative risk of infection (compared to that predicted by
#'        elevated viral load) when positive partner is in the acute stage.
#' @param circ.rr Relative risk of infection from insertive anal sex when the
#'        negative insertive partner is circumcised.
#' @param condom.rr Relative risk of infection from anal sex when a condom is
#'        used.
#' @param disc.outset.main.B.prob Probability that an HIV-infected black MSM will
#'        disclose his status at the start of a main partnership.
#' @param disc.outset.main.W.prob Probability that an HIV-infected white MSM will
#'        disclose his status at the start of a main partnership.
#' @param disc.at.diag.main.B.prob Probability that a black MSM already in a main
#'        partnership will disclose at the time of diagnosis.
#' @param disc.at.diag.main.W.prob Probability that a white MSM already in a main
#'        partnership will disclose at the time of diagnosis.
#' @param disc.post.diag.main.B.prob Probability that an HIV-infected black MSM
#'        in a main partnership will disclose his status, assuming he didn't
#'        at the start of the partnership or at diagnosis.
#' @param disc.post.diag.main.W.prob Probability that an HIV-infected white MSM
#'        in a main partnership will disclose his status, assuming he didn't
#'        at the start of the partnership or at diagnosis.
#' @param disc.outset.pers.B.prob Probability that an HIV-infected black MSM will
#'        disclose his status at the start of a casual partnership.
#' @param disc.outset.pers.W.prob Probability that an HIV-infected white MSM will
#'        disclose his status at the start of a casual partnership.
#' @param disc.at.diag.pers.B.prob Probability that a black MSM already in a
#'        casual partnership will disclose at the time of diagnosis.
#' @param disc.at.diag.pers.W.prob Probability that a white MSM already in a
#'        casual partnership will disclose at the time of diagnosis.
#' @param disc.post.diag.pers.B.prob Probability that an HIV-infected black MSM
#'        in a casual partnership will disclose his status, assuming he
#'        didn't at the start of the partnership or at diagnosis.
#' @param disc.post.diag.pers.W.prob Probability that an HIV-infected white MSM
#'        in a casual partnership will disclose his status, assuming he
#'        didn't at the start of the partnership or at diagnosis.
#' @param disc.inst.B.prob Probability that an HIV-infected black MSM will
#'        disclose his status to a one-off partner.
#' @param disc.inst.W.prob Probability that an HIV-infected white MSM will
#'        disclose his status to a one-off partner.
#' @param circ.B.prob Probablity that a black new arrival in the population
#'        will be circumcised.
#' @param circ.W.prob Probablity that a white new arrival in the population
#'        will be circumcised.
#' @param ccr5.B.prob Vector of length two of frequencies of the Delta 32
#'        mutation (homozygous and heterozygous, respectively) in the CCR5 gene
#'        among black MSM.
#' @param ccr5.W.prob Vector of length two of frequencies of the Delta 32
#'        mutation (homozygous and heterozygous, respectively) in the CCR5 gene
#'        among white MSM.
#' @param ccr5.heteroz.rr Relative risk of infection for men who are heterozygous
#'        in the CCR5 mutation.
#' @param num.inst.ai.classes Number of quantiles into which men should be
#'        divided in determining their levels of one-off anal intercourse.
#' @param base.ai.main.BB.rate Expected coital frequency in black-black main
#'        partnerships (acts per day).
#' @param base.ai.main.BW.rate Expected coital frequency in black-white main
#'        partnerships (acts per day).
#' @param base.ai.main.WW.rate Expected coital frequency in white-white main
#'        partnerships (acts per day).
#' @param base.ai.pers.BB.rate Expected coital frequency in black-black casual
#'        partnerships (acts per day).
#' @param base.ai.pers.BW.rate Expected coital frequency in black-white casual
#'        partnerships (acts per day).
#' @param base.ai.pers.WW.rate Expected coital frequency in white-white casual
#'        partnerships (acts per day).
#' @param ai.scale General relative scaler for all act rates for model
#'        calibration.
#' @param cond.main.BB.prob Probability of condom use in a black-black main
#'        partnership.
#' @param cond.main.BW.prob Probability of condom use in a black-white main
#'        partnership.
#' @param cond.main.WW.prob Probability of condom use in a white-white main
#'        partnership.
#' @param cond.pers.always.prob Fraction of men in casual partnerships who always
#'        use condoms in those partnerships.
#' @param cond.pers.BB.prob Of men who are not consistent condom users, per-act
#'        probability of condom use in a black-black casual partnerships.
#' @param cond.pers.BW.prob Of men who are not consistent condom users, per-act
#'        probability of condom use in a black-white casual partnerships.
#' @param cond.pers.WW.prob Of men who are not consistent condom users, per-act
#'        probability of condom use in a white-white casual partnerships.
#' @param cond.inst.always.prob Fraction of men in instant partnerships who always
#'        use condoms in those partnerships.
#' @param cond.inst.BB.prob Of men who are not consistent condom users, per-act
#'        probability of condom use in a black-black one-off partnerships.
#' @param cond.inst.BW.prob Of men who are not consistent condom users, per-act
#'        probability of condom use in a black-white one-off partnerships.
#' @param cond.inst.WW.prob Of men who are not consistent condom users, per-act
#'        probability of condom use in a white-white one-off partnerships.
#' @param cond.always.prob.corr Correlation coefficient for probability of always
#'        using condoms in both casual and one-off
#' @param cond.rr.BB Condom probability scaler for black-black partnerships for
#'        model calibration purposes.
#' @param cond.rr.BW Condom probability scaler for black-white partnerships for
#'        model calibration purposes.
#' @param cond.rr.WW Condom probability scaler for white-white partnerships for
#'        model calibration purposes.
#' @param cond.diag.main.beta Beta multiplier for the log odds of using a
#'        condom in a main partnership if the HIV-infected man has been
#'        diagnosed.
#' @param cond.discl.main.beta Beta multiplier for the log odds of using a
#'        condom in a main partnership if the HIV-infected man has disclosed.
#' @param cond.diag.pers.beta Beta multiplier for the log odds of using a
#'        condom in a casual partnership if the HIV-infected man has been
#'        diagnosed.
#' @param cond.discl.pers.beta Beta multiplier for the log odds of using a
#'        condom in a casual partnership if the HIV-infected man has disclosed
#'        his status.
#' @param cond.diag.inst.beta Beta multiplier for the log odds of using a
#'        condom in a one-off partnership if the HIV-infected man has been
#'        diagnosed.
#' @param cond.discl.inst.beta Beta multiplier for the log odds of using a
#'        condom in a one-off partnership if the HIV-infected man has disclosed
#'        his status.
#' @param vv.iev.BB.prob Probability that in a black-black partnership of
#'        two versatile men, they will engage in intra-event versatility
#'        ("flipping") given that they're having AI.
#' @param vv.iev.BW.prob Probability that in a black-white partnership of
#'        two versatile men, they will engage in intra-event versatility
#'        ("flipping") given that they're having AI.
#' @param vv.iev.WW.prob Probability that in a white-white partnership of
#'        two versatile men, they will engage in intra-event versatility
#'        ("flipping") given that they're having AI.
#' @param prep.start Time step at which the PrEP intervention should start.
#' @param prep.elig.model Modeling approach for determining who is eligible for
#'        PrEP. Current options are limited to: \code{"all"} for all persons who
#'        have never been on PrEP and are disease-susceptible.
#' @param prep.class.prob The probability of adherence class in non-adherent,
#'        low adherence, medium adherence, or high adherence groups (from Liu).
#' @param prep.class.hr The hazard ratio for infection per act associated with each
#'        level of adherence (from Grant).
#' @param prep.coverage.adol.naive The proportion of the eligible MSM population who did 
#'        not use prep as an asmm that start PrEP once they become eligible.
#' @param prep.coverage The proportion of the eligible MSM population who used PrEP as an ASMM
#'        and start PrEP once they become eligible.
#' @param prep.cov.method The method for calculating PrEP coverage, with options
#'        of \code{"curr"} to base the numerator on the number of people currently
#'        on PrEP and \code{"ever"} to base it on the number of people ever on
#'        PrEP.
#' @param prep.cov.rate The rate at which persons initiate PrEP conditional on
#'        their eligibility, with 1 equal to instant start.
#' @param prep.tst.int Testing interval for those who are actively on PrEP. This
#'        overrides the mean testing interval parameters.
#' @param prep.risk.int Time window for assessment of risk eligibility for PrEP
#'        in days.
#' @param prep.risk.reassess If \code{TRUE}, reassess eligibility for PrEP at
#'        each testing visit.
#' @param prep.start.asmm Time step at which the PrEP intervention should start.
#' @param prep.elig.model.asmm Modeling approach for determining who is eligible for
#'        PrEP. Current options are limited to: \code{none, adol.entry, adol.debuted, 
#'        adol.AI, adol.entry.older, adol.debuted.older, adol.AI.older,
#'        adol.entry.time, adol.debuted.time, adol.AI.time, adol.entry.older.time,
#'        adol.debuted.older.time, adol.AI.older.time, adol.riskhist,
#'        adol.riskhist.older, adol.riskhist.time, adol.riskhist.older.time}
#'        for all persons who have never been on PrEP or those who have cycled off
#'        see: prepSpell if \code{TRUE} and are disease-susceptible.
#' @param prep.efficacy.asmm The per-contact efficacy of PrEP to prevent infection if
#'        used (parameter not currently used).
#' @param prep.class.prob.b.asmm The frequency of being in a low, medium, or high class
#'        of adherence to PrEP for black asmm.
#' @param prep.class.prob.w.asmm The frequency of being in a low, medium, or high class
#'        of adherence to PrEP for white asmm.
#' @param prep.class.effect.asmm The functional effectiveness of PrEP conditional on
#'        PrEP class.
#' @param prep.coverage.b.asmm The proportion of the eligible population who are start
#'        PrEP once they become eligible for black asmm.
#' @param prep.coverage.w.asmm The proportion of the eligible population who are start
#'        PrEP once they become eligible for white asmm.
#' @param prep.cov.method.asmm The method for calculating PrEP coverage, with options
#'        of \code{"curr"} to base the numerator on the number of people currently
#'        on PrEP and \code{"ever"} to base it on the number of people ever on
#'        PrEP for asmm.
#' @param prep.cov.rate.b.asmm The rate at which persons initiate PrEP conditional on
#'        their eligibility, with 1 equal to instant start for black asmm.
#' @param prep.cov.rate.w.asmm The rate at which persons initiate PrEP conditional on
#'        their eligibility, with 1 equal to instant start for white asmm.

#' @param prep.tst.int.asmm Testing interval for asmm who are actively on PrEP. This
#'        overrides the mean testing interval parameters.
#' @param prep.risk.int.asmm Time window for assessment of risk eligibility for PrEP
#'        in days.
#' @param prep.risk.reassess.asmm If \code{TRUE}, reassess eligibility for PrEP at
#'        each testing visit.
#' @param prep.delay.b.asmm The number of timesteps between becomeing eligible for PreP and starting PrEP for black asmm.
#' @param prep.delay.w.asmm The number of timesteps between becomeing eligible for PreP and starting PrEP for white asmm.
#' @param prepSpell.asmm If \code{TRUE}, there is a constant hazard from dropping PrEP.
#' @param PrepDrop.b.asmm The hazard for dropping PrEP for black asmm given prepSpell.asmm==TRUE.
#' @param PrepDrop.w.asmm The hazard for dropping PrEP for white asmm given prepSpell.asmm==TRUE.
#' @param prep.uaicount.thresh.b.asmm The number of UAI a black asmm must have to initiate prep 
#'        if PreP eligibility is based on UAI counts.
#' @param prep.uaicount.thresh.w.asmm The number of UAI a white asmm must have to initiate prep 
#'        if PreP eligibility is based on UAI counts.
#' @param rcomp.prob Level of risk compensation from 0 to 1, where 0 is no risk
#'        compensation, 0.5 is a 50% reduction in the probability of condom use
#'        per act, and 1 is a complete cessation of condom use following PrEP
#'        initiation.
#' @param rcomp.adh.groups PrEP adherence groups for whom risk compensation
#'        occurs, as a vector with values 0, 1, 2, 3 corresponding to non-adherent,
#'        low adherence, medium adherence, and high adherence to PrEP.
#' @param rcomp.main.only Logical, if risk compensation is limited to main
#'        partnerships only, versus all partnerships.
#' @param rcomp.discl.only Logical, if risk compensation is limited known-discordant
#'        partnerships only, versus all partnerships.
#' @param ... Additional arguments passed to the function.
#'
#' @return
#' A list object of class \code{param_msm}, which can be passed to
#' EpiModel function \code{netsim}.
#'
#' @keywords msm
#'
#' @export
param_msm <- function(nwstats,
                      race.method = 1,
                      last.neg.test.B.int = 301,
                      last.neg.test.W.int = 315,
                      
                      ##USE MMWR data to fit!!!
                      ##22% with AI have at least 1 test at the cross section
                      last.neg.test.B.int.asmm = 2900,
                      last.neg.test.W.int.asmm = 2900,
                      
                      mean.test.B.int = 301,
                      mean.test.W.int = 315,
                      
                      ##USE MMWR data to fit!!!
                      ##22% with AI have at least 1 test at the cross section
                      mean.test.B.int.asmm = 2900,
                      mean.test.W.int.asmm = 2900,
                      
                      testing.pattern = "memoryless",
                      test.window.int = 21,

                      tt.traj.B.prob = c(0.077, 0.000, 0.356, 0.567),
                      tt.traj.W.prob = c(0.052, 0.000, 0.331, 0.617),
                      

                      tx.init.B.prob = 0.092,
                      tx.init.W.prob = 0.127,
                      tx.halt.B.prob = 0.0102,
                      tx.halt.W.prob = 0.0071,
                      tx.reinit.B.prob = 0.00066,
                      tx.reinit.W.prob = 0.00291,
                      
                      ##USE MMWR data to fit!!!
                      ##66% of known status on treatment within 90 days.
                      tx.init.B.prob.asmm = 0.092,
                      tx.init.W.prob.asmm = 0.127,
                      tx.halt.B.prob.asmm = 0.0102,
                      tx.halt.W.prob.asmm = 0.0071,
                      tx.reinit.B.prob.asmm = 0.00066,
                      tx.reinit.W.prob.asmm = 0.00291,
                      

                      max.time.off.tx.full.int = 520 * 7,
                      max.time.on.tx.part.int = 52 * 15 * 7,
                      max.time.off.tx.part.int = 520 * 7,
                      vl.acute.rise.int = 45,
                      vl.acute.peak = 6.886,
                      vl.acute.fall.int = 45,
                      vl.set.point = 4.5,
                      vl.aids.onset.int = 520 * 7,
                      vl.aids.int = 52 * 2 * 7,
                      vl.fatal = 7,
                      vl.full.supp = 1.5,
                      vl.part.supp = 3.5,
                      full.supp.down.slope = 0.25,
                      full.supp.up.slope = 0.25,
                      part.supp.down.slope = 0.25,
                      part.supp.up.slope = 0.25,

                      
                      #b.B.rate = 1e-3 / 7,
                      #b.W.rate = 1e-3 / 7,
                      birth.age = 13,
                      #b.method = "fixed",
                      
                      b.B.rate.asmm = 0.004262/7,
                      b.W.rate.asmm = 0.004262/7,
                      b.method = "fixed",
                      

                      URAI.prob = 0.0082 * 1.09,
                      UIAI.prob = 0.0031 * 1.09,
                      acute.rr = 6,
                      circ.rr = 0.4,
                      condom.rr = 0.295,

                      disc.outset.main.B.prob = 0.685,
                      disc.outset.main.W.prob = 0.889,
                      disc.at.diag.main.B.prob = 1,
                      disc.at.diag.main.W.prob = 1,
                      disc.post.diag.main.B.prob = 0,
                      disc.post.diag.main.W.prob = 0,
                      disc.outset.pers.B.prob = 0.527,
                      disc.outset.pers.W.prob = 0.828,
                      disc.at.diag.pers.B.prob = 1,
                      disc.at.diag.pers.W.prob = 1,
                      disc.post.diag.pers.B.prob = 0,
                      disc.post.diag.pers.W.prob = 0,
                      disc.inst.B.prob = 0.445,
                      disc.inst.W.prob = 0.691,
                      
                      disc.outset.asmm.B.prob.asmm = 0,
                      disc.outset.asmm.W.prob.asmm = 0,
                      disc.at.diag.asmm.B.prob.asmm = 1,
                      disc.at.diag.asmm.W.prob.asmm = 1,
                      disc.post.diag.asmm.B.prob.asmm = 0,
                      disc.post.diag.asmm.W.prob.asmm = 0,


                      circ.B.prob = 0.874,
                      circ.W.prob = 0.918,

                      ccr5.B.prob = c(0, 0.034),
                      ccr5.W.prob = c(0.021, 0.176),
                      ccr5.heteroz.rr = 0.3,

                      num.inst.ai.classes = 1,
                      base.ai.main.BB.rate = 0.17,
                      base.ai.main.BW.rate = 0.26,
                      base.ai.main.WW.rate = 0.23,
                      base.ai.pers.BB.rate = 0.11,
                      base.ai.pers.BW.rate = 0.16,
                      base.ai.pers.WW.rate = 0.14,
                      
                      base.ai.asmm.BB.rate = 0.0384,
                      base.ai.asmm.BW.rate = 0.0384,
                      base.ai.asmm.WW.rate = 0.0384,
                      
                      ai.main.scale = 1,
                      ai.pers.scale = 1,
                      ai.inst.scale = 1,
                      ai.asmm.scale = 1,

                      
                      cond.main.BB.prob = 0.38,
                      cond.main.BW.prob = 0.10,
                      cond.main.WW.prob = 0.15,
                      
                      cond.pers.always.prob = 0.216,
                      cond.pers.BB.prob = 0.26,
                      cond.pers.BW.prob = 0.26,
                      cond.pers.WW.prob = 0.26,
                      
                      cond.inst.always.prob = 0.326,
                      cond.inst.BB.prob = 0.27,
                      cond.inst.BW.prob = 0.27,
                      cond.inst.WW.prob = 0.27,
                      
                      cond.always.prob.corr = 0.5,
                     
                      cond.asmm.always.prob = 0,
                      cond.asmm.BB.prob = 0.54,
                      cond.asmm.BW.prob = 0.54,
                      cond.asmm.WW.prob = 0.54,
                      
       
                      cond.rr.BB = 1,
                      cond.rr.BW = 1,
                      cond.rr.WW = 1,
                      cond.diag.main.beta = -0.67,
                      cond.discl.main.beta = -0.85,
                      cond.diag.pers.beta = -0.67,
                      cond.discl.pers.beta = -0.85,
                      cond.diag.inst.beta = -0.67,
                      cond.discl.inst.beta = -0.85,
                      cond.diag.asmm.beta = -0.67,
                      cond.discl.asmm.beta = -0.85,
                      
                      vv.iev.BB.prob = 0.42,
                      vv.iev.BW.prob = 0.56,
                      vv.iev.WW.prob = 0.49,

                      prep.start = Inf,
                      prep.elig.model = "base",
                      prep.class.prob = c(0.211, 0.07, 0.1, 0.619),
                      prep.class.hr = c(1, 0.69, 0.19, 0.05),
                      prep.coverage.adol.naive = 0,
                      prep.coverage.adol.exp = 0,
                      prep.cov.method = "curr",
                      prep.cov.rate = 1,
                      prep.tst.int = 90,
                      prep.risk.int = 182,
                      prep.risk.reassess = TRUE,
                      
                      prep.start.asmm = 1,
                      prep.elig.model.asmm = "none",
                      prep.efficacy.asmm = 0.92,
                      prep.class.prob.b.asmm = c(.2085, .2438, .1314, .4163), 
                      prep.class.prob.w.asmm = c(.2085, .2438, .1314, .4163), 
                      prep.class.effect.asmm = c(0, 0.31, 0.81, 0.95),
                      prep.coverage.b.asmm = .4,
                      prep.coverage.w.asmm = .4,
                      prep.cov.method.asmm = "curr",
                      prep.cov.rate.b.asmm = 1,
                      prep.cov.rate.w.asmm = 1,
                      prep.rcomp.asmm = 1,
                      prep.tst.int.asmm = 90,
                      prep.risk.int.asmm = 182,
                      prep.risk.reassess.asmm = FALSE,
                      prep.delay.b.asmm = 26,
                      prep.delay.w.asmm = 26,
                      prepSpell.asmm = FALSE,
                      prepDrop.b.asmm = .014337,
                      prepDrop.w.asmm = .014337,
                      prep.uaicount.thresh.b.asmm = 10,
                      prep.uaicount.thresh.w.asmm = 10,
                      
                      rcomp.prob = 0,
                      rcomp.adh.groups = 0:4,
                      rcomp.main.only = FALSE,
                      rcomp.discl.only = FALSE,
                      ...) {

  p <- get_args(formal.args = formals(sys.function()),
                dot.args = list(...))

  if (!(testing.pattern %in% c("memoryless", "interval"))) {
    stop("testing.pattern must be \"memoryless\" or \"interval\" ",
          call. = FALSE)
  }

  if (race.method == 1) {
    p$last.neg.test.B.int = (last.neg.test.B.int + last.neg.test.W.int)/2
    p$last.neg.test.W.int = (last.neg.test.B.int + last.neg.test.W.int)/2
    p$mean.test.B.int = (mean.test.W.int + mean.test.B.int)/2
    p$mean.test.W.int = (mean.test.W.int + mean.test.B.int)/2
    p$tt.traj.B.prob = (tt.traj.B.prob + tt.traj.W.prob)/2
    p$tt.traj.W.prob = (tt.traj.B.prob + tt.traj.W.prob)/2
    p$tx.init.B.prob = (tx.init.B.prob + tx.init.W.prob)/2
    p$tx.init.W.prob = (tx.init.B.prob + tx.init.W.prob)/2
    p$tx.halt.B.prob = (tx.halt.B.prob + tx.halt.W.prob)/2
    p$tx.halt.W.prob = (tx.halt.B.prob + tx.halt.W.prob)/2
    p$tx.reinit.B.prob = (tx.reinit.B.prob + tx.reinit.W.prob)/2
    p$tx.reinit.W.prob = (tx.reinit.B.prob + tx.reinit.W.prob)/2
    p$disc.outset.main.B.prob = (disc.outset.main.B.prob + disc.outset.main.W.prob)/2
    p$disc.outset.main.W.prob = (disc.outset.main.B.prob + disc.outset.main.W.prob)/2
    p$disc.outset.pers.B.prob = (disc.outset.pers.B.prob + disc.outset.pers.W.prob)/2
    p$disc.outset.pers.W.prob = (disc.outset.pers.B.prob + disc.outset.pers.W.prob)/2
    p$disc.inst.B.prob = (disc.inst.B.prob + disc.inst.W.prob)/2
    p$disc.inst.W.prob = (disc.inst.B.prob + disc.inst.W.prob)/2
    p$circ.B.prob = (circ.B.prob + circ.W.prob)/2
    p$circ.W.prob = (circ.B.prob + circ.W.prob)/2
    p$ccr5.B.prob = (ccr5.B.prob + ccr5.W.prob)/2
    p$ccr5.W.prob = (ccr5.B.prob + ccr5.W.prob)/2
    p$base.ai.main.BB.rate = (base.ai.main.BB.rate + base.ai.main.BW.rate +
                                base.ai.main.WW.rate)/3
    p$base.ai.main.BW.rate = (base.ai.main.BB.rate + base.ai.main.BW.rate +
                                base.ai.main.WW.rate)/3
    p$base.ai.main.WW.rate = (base.ai.main.BB.rate + base.ai.main.BW.rate +
                                base.ai.main.WW.rate)/3
    p$base.ai.pers.BB.rate = (base.ai.pers.BB.rate + base.ai.pers.BW.rate +
                                base.ai.pers.WW.rate)/3
    p$base.ai.pers.BW.rate = (base.ai.pers.BB.rate + base.ai.pers.BW.rate +
                                base.ai.pers.WW.rate)/3
    p$base.ai.pers.WW.rate = (base.ai.pers.BB.rate + base.ai.pers.BW.rate +
                                base.ai.pers.WW.rate)/3
    p$cond.main.BB.prob = (cond.main.BB.prob + cond.main.BW.prob + cond.main.WW.prob)/3
    p$cond.main.BW.prob = (cond.main.BB.prob + cond.main.BW.prob + cond.main.WW.prob)/3
    p$cond.main.WW.prob = (cond.main.BB.prob + cond.main.BW.prob + cond.main.WW.prob)/3
    p$cond.pers.BB.prob = (cond.pers.BB.prob + cond.pers.BW.prob + cond.pers.WW.prob)/3
    p$cond.pers.BW.prob = (cond.pers.BB.prob + cond.pers.BW.prob + cond.pers.WW.prob)/3
    p$cond.pers.WW.prob = (cond.pers.BB.prob + cond.pers.BW.prob + cond.pers.WW.prob)/3
    p$cond.inst.BB.prob = (cond.inst.BB.prob + cond.inst.BW.prob + cond.inst.WW.prob)/3
    p$cond.inst.BW.prob = (cond.inst.BB.prob + cond.inst.BW.prob + cond.inst.WW.prob)/3
    p$cond.inst.WW.prob = (cond.inst.BB.prob + cond.inst.BW.prob + cond.inst.WW.prob)/3
    p$vv.iev.BB.prob = (vv.iev.BB.prob + vv.iev.BW.prob + vv.iev.WW.prob)/3
    p$vv.iev.BW.prob = (vv.iev.BB.prob + vv.iev.BW.prob + vv.iev.WW.prob)/3
    p$vv.iev.WW.prob = (vv.iev.BB.prob + vv.iev.BW.prob + vv.iev.WW.prob)/3
  }

  p$time.unit <- nwstats$time.unit

  intvars <- grep(names(p), pattern = ".int", fixed = TRUE)
  p[intvars] <- lapply(p[intvars], FUN = function(x) round(x / p$time.unit))

  ratevars <- grep(names(p), pattern = ".rate", fixed = TRUE)
  p[ratevars] <- lapply(p[ratevars], FUN = function(x) x * p$time.unit)

  p$role.B.prob.msm <- nwstats$role.B.prob.msm
  p$role.W.prob.msm <- nwstats$role.W.prob.msm
  
  p$role.B.prob.asmm <- nwstats$role.B.prob.asmm
  p$role.W.prob.asmm <- nwstats$role.W.prob.asmm
  p$role.shift <- nwstats$role.shift

  p$inst.trans.matrix <- matrix(1, nrow = 1)
  p$role.trans.matrix <- matrix(c(1, 0, 0,
                                  0, 1, 0,
                                  0, 0, 1),
                                nrow = 3)


  p$riskh.start <- max(1, prep.start - prep.risk.int - 1)

  p$method <- nwstats$method
  p$modes <- 1

  p$asmr.B <- nwstats$asmr.B
  p$asmr.W <- nwstats$asmr.W

  p$nwstats <- NULL

  class(p) <- "param.net"
  return(p)
}


#' @title Epidemic Model Initial Conditions
#'
#' @description Sets the initial conditions for a stochastic epidemic models
#'              simulated with \code{\link{netsim}}.
#'
#' @param nwstats Target statistics for the network model. An object of class
#'        \code{nwstats} output from \code{\link{calc_nwstats_msm}}.
#' @param prev.B Initial disease prevalence among black MSM.
#' @param prev.W Initial disease prevalence among white MSM.
#' @param ... Additional arguments passed to function.
#'
#' @return
#' A list object of class \code{init_msm}, which can be passed to EpiModel
#' function \code{\link{netsim}}.
#'
#' @keywords msm
#'
#' @export
init_msm <- function(nwstats,
                     prev.B = 0.253,
                     prev.W = 0.253,
                     prev.asmm = 0.07,
                     ...) {

  p <- get_args(formal.args = formals(sys.function()),
                dot.args = list(...))

  p$num.B <- nwstats$num.B
  p$num.W <- nwstats$num.W
  p$num.B.msm <- nwstats$num.B.msm
  p$num.W.msm <- nwstats$num.W.msm
  p$num.B.asmm <- nwstats$num.B.asmm
  p$num.W.asmm <- nwstats$num.W.asmm

  p$ages <- nwstats$ages

  p$init.prev.age.slope.B <- prev.B / 27
  p$init.prev.age.slope.W <- prev.W / 27


  
  ###########  ASMM   ####################
  p$out.age.prob <- nwstats$out.age.prob
  p$debut.entry.prob <- nwstats$debut.entry.prob
  p$debut.prob <- nwstats$debut.prob

  
  p$nwstats <- NULL
  
  class(p) <- "init.net"
  return(p)
}


#' @title Epidemic Model Control Settings
#'
#' @description Sets the controls for stochastic network models simulated with
#'              \code{\link{netsim}}.
#'
#' @param simno Unique ID for the simulation run, used for file naming purposes
#'        if used in conjunction with the \code{EpiModelHPC} package.
#' @param nsims Number of simulations.
#' @param ncores Number of cores per run, if parallelization is used within the
#'        \code{EpiModelHPC} package.
#' @param nsteps Number of time steps per simulation.
#' @param start Starting time step for simulation, with default to 1 to run new
#'        simulation. This may also be set to 1 greater than the final time
#'        step of a previous simulation to resume the simulation with different
#'        parameters.
#' @param initialize.FUN Module function to use for initialization of the epidemic
#'        model.
#' @param aging.FUN Module function for aging.
#' @param outdebut.FUN Module for outing into the population and debuting as sexually available
#' @param deaths.FUN Module function for general and disease-realted deaths.
#' @param births.FUN Module function for births or entries into the population.
#' @param test.FUN Module function for diagnostic disease testing.
#' @param tx.FUN Module function for ART initiation and adherence.
#' @param prep.FUN Module function for PrEP initiation and utilization.
#' @param progress.FUN Module function for HIV disease progression.
#' @param vl.FUN Module function for HIV viral load evolution.
#' @param aiclass.FUN Module function for one-off AI risk class transitions.
#' @param roleclass.FUN Module function for transitions in sexual roles.
#' @param roleclasstrans.FUN Module function for transitioning the I,R,V distribution from asmm to MSM.
#' @param resim_nets.FUN Module function for network resimulation at each time
#'        step.
#' @param disclose.FUN Module function for HIV status disclosure.
#' @param acts.FUN Module function to simulate the number of sexual acts within
#'        partnerships.
#' @param condoms.FUN Module function to simulate condom use within acts.
#' @param riskhist.FUN Module function to calculate risk history for uninfected
#'        persons in the population.
#' @param riskhistasmm.FUN Module function to calculate simplified risk history for uninfected
#'        persons in the population.
#' @param position.FUN Module function to simulate sexual position within acts.
#' @param trans.FUN Module function to stochastically simulate disease transmission
#'        over acts given individual and dyadic attributes.
#' @param prev.FUN Module function to calculate prevalence summary statistics.
#' @param verbose.FUN Module function to print model progress to the console or
#'        external text files.
#' @param save.nwstats Calculate and save network statistics as defined in the
#'        \code{simnet} modules.
#' @param save.other Character vector containing other list elements of \code{dat}
#'        to save.
#' @param verbose If \code{TRUE}, print out simulation progress to the console
#'        if in interactive mode or text files if in batch mode.
#' @param verbose.int Integer specifying the interval between time steps at which
#'        progress is printed.
#' @param ... Additional arguments passed to the function.
#'
#' @return
#' A list object of class \code{control_msm}, which can be passed to the
#' EpiModel function \code{netsim}.
#'
#' @keywords msm
#'
#' @export
control_msm <- function(simno = 1,
                        nsims = 1,
                        ncores = 1,
                        nsteps = 100,
                        start = 1,
                        initialize.FUN = initialize_camplc,
                        aging.FUN = aging_camplc,
                        deaths.FUN = deaths_msm,
                        births.FUN = births_camplc,
                        outdebut.FUN = out_debut_camplc,
                        test.FUN = test_msm,
                        tx.FUN = tx_msm,
                        prep.FUN = prep_msm,
                        prep2.FUN = prep_adol,
                        progress.FUN = progress_msm,
                        vl.FUN = vl_msm,
                        aiclass.FUN = NULL,
                        roleclass.FUN = NULL,
                        role.classtrans = roleclass_trans,
                        resim_nets.FUN = simnet_msm,
                        disclose.FUN = disclose_msm,
                        acts.FUN = acts_msm,
                        condoms.FUN = condoms_msm,
                        riskhist.FUN = riskhist_msm,
                        riskhistasmm.FUN = riskhist_adol,
                        position.FUN = position_msm,
                        trans.FUN = trans_msm,
                        prev.FUN = prevalence_msm,
                        verbose.FUN = verbose_msm,
                        save.nwstats = FALSE,
                        save.other = c("attr", "temp", "riskh", "el", "p"),
                        verbose = TRUE,
                        verbose.int = 1,
                        ...) {

  formal.args <- formals(sys.function())
  dot.args <- list(...)
  p <- get_args(formal.args, dot.args)

  p$skip.check <- TRUE
  p$save.transmat <- FALSE

  bi.mods <- grep(".FUN", names(formal.args), value = TRUE)
  bi.mods <- bi.mods[which(sapply(bi.mods, function(x) !is.null(eval(parse(text = x))),
                                  USE.NAMES = FALSE) == TRUE)]
  p$bi.mods <- bi.mods
  p$user.mods <- grep(".FUN", names(dot.args), value = TRUE)

  p$save.network = FALSE

  class(p) <- "control.net"
  return(p)
}

