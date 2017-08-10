#!/usr/bin/env bash
set -veu
################################################################################
# Host: diuflx75
# DeepDive: deepdive v0.9.0rc2-1077-ga13aa4e (Linux x86_64)
export PATH='/home/ehsan/slocal/bin':"$PATH"
export DEEPDIVE_PWD='/home/ehsan/dd_apps/birth_place_dd'
export DEEPDIVE_APP='/home/ehsan/dd_apps/birth_place_dd'
cd "$DEEPDIVE_APP"/run
export DEEPDIVE_RUN_ID='20170809/000146.781223975'
# Plan: 20170809/000146.781223975/plan.sh
# Targets: candidate_label_resolved
################################################################################

process/init/app/run.sh ############################################# last done: N/A
process/init/relation/articles/run.sh ############################### last done: N/A
deepdive mark 'done' data/articles ################################## last done: N/A
process/ext_sentences_by_nlp_markup/run.sh ########################## last done: N/A
deepdive mark 'done' data/sentences ################################# last done: N/A
process/ext_person_mention_by_find_person_mention/run.sh ############ last done: N/A
deepdive mark 'done' data/person_mention ############################ last done: N/A
process/ext_num_person/run.sh ####################################### last done: N/A
deepdive mark 'done' data/num_person ################################ last done: N/A
process/ext_place_mention_by_find_place_mention/run.sh ############## last done: N/A
deepdive mark 'done' data/place_mention ############################# last done: N/A
process/ext_num_place/run.sh ######################################## last done: N/A
deepdive mark 'done' data/num_place ################################# last done: N/A
process/ext_born_place_candidate/run.sh ############################# last done: N/A
deepdive mark 'done' data/born_place_candidate ###################### last done: N/A
process/ext_candidate_label__0_by_supervise/run.sh ################## last done: N/A
deepdive mark 'done' data/candidate_label__0 ######################## last done: N/A
process/ext_nationality_mention_by_find_nationality_mention/run.sh ## last done: N/A
deepdive mark 'done' data/nationality_mention ####################### last done: N/A
process/init/relation/nationalities/run.sh ########################## last done: N/A
deepdive mark 'done' data/nationalities ############################# last done: N/A
process/ext_num_nationality/run.sh ################################## last done: N/A
deepdive mark 'done' data/num_nationality ########################### last done: N/A
process/ext_person_nationality_candidate/run.sh ##################### last done: N/A
deepdive mark 'done' data/person_nationality_candidate ############## last done: N/A
process/ext_candidate_label__1_by_supervise/run.sh ################## last done: N/A
deepdive mark 'done' data/candidate_label__1 ######################## last done: N/A
process/ext_candidate_label/run.sh ################################## last done: N/A
deepdive mark 'done' data/candidate_label ########################### last done: N/A
process/ext_candidate_label_resolved/run.sh ######################### last done: N/A
deepdive mark 'done' data/candidate_label_resolved ################## last done: N/A
