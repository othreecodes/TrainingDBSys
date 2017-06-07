<%@ include file="/common/taglibs.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Post Training Evaluation</title>
</head>
<body>


<div class="container-fluid">
    <s:form id="" namespace="/" action="save-evaluation" method="post">
    <s:if test="id!=null">
        <s:hidden name="postTraining.id" value="%{postTraining.id}"/>
        <s:if test="">
            <s:hidden name="" value="%{}"/>
        </s:if>
    </s:if>

    <div>
        <em>* <font style="color: #ff0000">means mandatory
            fields</font></em>
    </div>

    <h3>Post Training Evaluation Form (Post Training)</h3>
    <table id="" class="table table-responsive table-striped ">


        <!----------1.  Training Title.------------>
        <tr>
            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <label for="title" class=""><strong>Title of the training course: <font
                            style="color: #ff0000">*</font>
                    </strong></label>
                    <s:textfield cssClass="form-control" id="title" name="postTraining.title" value="%{postTraining.title}"/>
                </div>
            </div>


            <!-------------- date -------------->
            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <label for="date" class=""><strong>Date:<font
                            style="color: #ff0000">*</font></strong></label>
                            
                    <iita:datepicker cssClass="form-control datepicker" id="date" name="postTraining.date"
                                 value="%{postTraining.date}"/>
                </div>
            </div>


            <!--------------- Room .------------>
            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <label for="room" class="col-xs-6"><strong>Room:<font
                            style="color: #ff0000">*</font></strong></label>
                    <s:textfield cssClass="form-control" id="room" name="postTraining.room"
                                 value="%{postTraining.room}"/>
                </div>
            </div>

        </tr>

    </table>


    <table id="" class="table table-bodered table-responsive">
        <tr>
            <td>
                <table id="" class="table table-responsive">
                    <colgroup>
                        <col/>
                        <col width="150px"/>
                        <col width="150px"/>
                        <col width="150px"/>
                        <col width="150px"/>
                        <col width="150px"/>
                    </colgroup>
                    <thead>
                    <tr>
                        <th>Statement</th>
                        <th>Strongly Agree</th>
                        <th>Agree</th>
                        <th>Neutral</th>
                        <th>Disagree</th>
                        <th>Strongly Disagree</th>
                    </tr>
                    </thead>

                    <tr>
                        <td>1. The training met my expectations. <em><font style="color:#ff0000">*</font></em></td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="ExpMet" name="metExpectations" value="%{metExpectations}"
                                                 list="#{'STRONGLYAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="ExpMet1" name="metExpectations" value="%{metExpectations}" list="#{'AGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="ExpMet2" name="metExpectations" value="%{metExpectations}" list="#{'NEUTRAL':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="ExpMet3" name="metExpectations" value="%{metExpectations}" list="#{'DISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="ExpMet4" name="metExpectations" value="%{metExpectations}"
                                                 list="#{'STRONGLYDISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>


                    <!---------------Number 2--------------->


                    <tr>
                        <td>2. I will be able to apply the knowledge learned. <em><font
                                style="color:#ff0000">*</font></em></td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="knwLnd" name="applyKnowledge"
                                                 value="%{applyKnowledge}" list="#{'STRONGLYAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="knwLnd2" name="applyKnowledge"
                                                 value="%{applyKnowledge}" list="#{'AGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="knwLnd3" name="applyKnowledge"
                                                 value="%{applyKnowledge}" list="#{'NEUTRAL':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="knwLnd4" name="applyKnowledge"
                                                 value="%{postTraining.applyKnowledge}" list="#{'DISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="knwLnd5" name="applyKnowledge"
                                                 value="%{applyKnowledge}"
                                                 list="#{'STRONGLYDISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>


                    <!----------------- Number 3--------------------->
                    <tr>
                        <td>3. The training objectives for each topic were identified and followed.<em><font
                                style="color:#ff0000">*</font></em></td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trainObj" name="trainingObjectives"
                                                 value="%{trainingObjectives}"
                                                 list="#{'STRONGLYAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trainObj2" name="trainingObjectives"
                                                 value="%{trainingObjectives}" list="#{'AGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trainObj3" name="trainingObjectives"
                                                 value="%{postTraining.trainingObjectives}" list="#{'NEUTRAL':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trainObj4" name="trainingObjectives"
                                                 value="%{trainingObjectives}" list="#{'DISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trainObj5" name="trainingObjectives"
                                                 value="%{trainingObjectives}"
                                                 list="#{'STRONGLYDISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>


                    <!-- Number 4-->

                    <tr>
                        <td>4. The content was well organized and easy to follow <em><font
                                style="color:#ff0000">*</font></em></td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="ContentOrg" name="organisedEasy"
                                                 value="%{organisedEasy}" list="#{'STRONGLYAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="ContentOrg1" name="organisedEasy"
                                                 value="%{organisedEasy}" list="#{'AGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="ContentOrg2" name="organisedEasy"
                                                 value="%{organisedEasy}" list="#{'NEUTRAL':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="ContentOrg3" name="organisedEasy"
                                                 value="%{organisedEasy}" list="#{'DISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="ContentOrg4" name="organisedEasy"
                                                 value="%{organisedEasy}" list="#{'STRONGLYDISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>

                    <!-- Number 5-->

                    <tr>
                        <td>5. The materials distributed were pertinent and useful. <em><font
                                style="color:#ff0000">*</font></em></td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="matDist" name="materialsUseful"
                                                 value="%{materialsUseful}" list="#{'STRONGLYAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="matDist1" name="materialsUseful"
                                                 value="%{materialsUseful}" list="#{'AGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="matDist2" name="materialsUseful"
                                                 value="%{materialsUseful}" list="#{'NEUTRAL':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="matDist3" name="materialsUseful"
                                                 value="%{materialsUseful}" list="#{'DISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="matDist4" name="materialsUseful"
                                                 value="%{materialsUseful}"
                                                 list="#{'STRONGLYDISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>


                    <!-- Number 6-->

                    <tr>
                        <td>6. The trainer was knowledgeable.<em><font style="color:#ff0000">*</font></em></td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trainerKnw" name="trainerKnowledge"
                                                 value="%{trainerKnowledge}" list="#{'STRONGLYAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trainerKnw1" name="trainerKnowledge"
                                                 value="%{trainerKnowledge}" list="#{'AGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trainerKnw2" name="trainerKnowledge"
                                                 value="%{trainerKnowledge}" list="#{'NEUTRAL':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trainerKnw3" name="trainerKnowledge"
                                                 value="%{trainerKnowledge}" list="#{'DISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trainerKnw4" name="trainerKnowledge"
                                                 value="%{trainerKnowledge}"
                                                 list="#{'STRONGLYDISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>


                    <!-- Number 7-->

                    <tr>
                        <td>7. The quality of instruction was good.<em><font style="color:#ff0000">*</font></em></td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="instQual" name="qualityGood"
                                                 value="%{qualityGood}" list="#{'STRONGLYAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="instQual1" name="qualityGood"
                                                 value="%{qualityGood}" list="#{'AGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="instQual2" name="qualityGood"
                                                 value="%{qualityGood}" list="#{'NEUTRAL':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="instQual3" name="qualityGood"
                                                 value="%{qualityGood}" list="#{'DISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="instQual4" name="qualityGood"
                                                 value="%{qualityGood}" list="#{'STRONGLYDISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>


                    <!-- Number 8-->

                    <tr>
                        <td>8. The trainer met the training objectives. <em><font style="color:#ff0000">*</font></em>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="TrainObj" name="metObjectives"
                                                 value="%{metObjectives}" list="#{'STRONGLYAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="TrainObj1" name="metObjectives"
                                                 value="%{metObjectives}" list="#{'AGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="TrainObj2" name="metObjectives"
                                                 value="%{metObjectives}" list="#{'NEUTRAL':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="TrainObj3" name="metObjectives"
                                                 value="%{metObjectives}" list="#{'DISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="TrainObj4" name="metObjectives"
                                                 value="%{metObjectives}" list="#{'STRONGLYDISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>


                    <!-- Number 9-->

                    <tr>
                        <td>9. Class participation and interaction were encouraged.<em><font
                                style="color:#ff0000">*</font></em></td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="Classpart" name="participationEncouraged"
                                                 value="%{participationEncouraged}"
                                                 list="#{'STRONGLYAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="Classpart2" name="participationEncouraged"
                                                 value="%{postTraining.participationEncouraged}" list="#{'AGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="Classpart3" name="participationEncouraged"
                                                 value="%{participationEncouraged}"
                                                 list="#{'NEUTRAL':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="Classpart4" name="participationEncouraged"
                                                 value="%{participationEncouraged}"
                                                 list="#{'DISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="Classpart5" name="participationEncouraged"
                                                 value="%{participationEncouraged}"
                                                 list="#{'STRONGLYDISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>


                    <!-- Number 10-->

                    <tr>
                        <td>10. Adequate time was provided for questions and discussion.<em><font style="color:#ff0000">*</font></em>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="TimeProv" name="timeforquestions"
                                                 value="%{timeforquestions}" list="#{'STRONGLYAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="TimeProv1" name="timeforquestions"
                                                 value="%{timeforquestions}" list="#{'AGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="TimeProv2" name="timeforquestions"
                                                 value="%{timeforquestions}" list="#{'NEUTRAL':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="TimeProv3" name="timeforquestions"
                                                 value="%{timeforquestions}" list="#{'DISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="TimeProv4" name="timeforquestions"
                                                 value="%{timeforquestions}"
                                                 list="#{'STRONGLYDISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>


                    <!-- Number 11-->

                    <tr>
                        <td>11. The length of the training was sufficient<em><font style="color:#ff0000">*</font></em>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trnLength" name="lenghtSufficient"
                                                 value="%{lenghtSufficient}" list="#{'STRONGLYAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trnLength1" name="lenghtSufficient"
                                                 value="%{lenghtSufficient}" list="#{'AGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trnLength2" name="lenghtSufficient"
                                                 value="%{lenghtSufficient}" list="#{'NEUTRAL':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trnLength3" name="lenghtSufficient"
                                                 value="%{lenghtSufficient}" list="#{'DISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="trnLength4" name="lenghtSufficient"
                                                 value="%{lenghtSufficient}"
                                                 list="#{'STRONGLYDISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>


                    <!-------------- Number 12--------------->

                    <tr>
                        <td>12. The meeting room and facilities were adequate and comfortable<em><font
                                style="color:#ff0000">*</font></em></td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="roomFacil" name="facilitiesComfortable"
                                                 value="%{facilitiesComfortable}"
                                                 list="#{'STRONGLYAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="roomFacil2" name="facilitiesComfortable"
                                                 value="%{facilitiesComfortable}" list="#{'AGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="roomFacil3" name="facilitiesComfortable"
                                                 value="%{facilitiesComfortable}" list="#{'NEUTRAL':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="roomFacil4" name="facilitiesComfortable"
                                                 value="%{facilitiesComfortable}" list="#{'DISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="roomFacil5" name="facilitiesComfortable"
                                                 value="%{facilitiesComfortable}"
                                                 list="#{'STRONGLYDISAGREE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>

                </table>

                <!---------------- Number 13 header------------------------>

        <tr>
            <td>
                <table id="" class="table table-responsive">
                    <colgroup>
                        <col/>
                        <col width="150px"/>
                        <col width="150px"/>
                        <col width="150px"/>
                        <col width="150px"/>
                        <col width="150px"/>
                    </colgroup>
                    <thead>
                    <tr>
                        <th></th>
                        <th>Excellent</th>
                        <th>Good</th>
                        <th>Average</th>
                        <th>Poor</th>
                        <th>Very poor</th>
                    </tr>
                    </thead>


                    <!---------------- Number 13------------------------>
                    <tr>
                        <td>13. How do you rate the training overall?<em><font style="color:#ff0000">*</font></em></td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="rating" name="rateTraining"
                                                 value="%{rateTraining}" list="#{'EXCELLENT':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="rating1" name="rateTraining"
                                                 value="%{rateTraining}" list="#{'GOOD':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="rating2" name="rateTraining"
                                                 value="%{rateTraining}" list="#{'AVERAGE':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="rating3" name="rateTraining"
                                                 value="%{rateTraining}" list="#{'POOR':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <s:radio id="rating4" name="rateTraining"
                                                 value="%{rateTraining}" list="#{'VERYPOOR':''}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>

                    <!---------------- Number 14------------------------>
                    <tr>
                        <td>

                            <div class="row">

                                <div class=" col-md-12">
                                    <label for="improve" class="col-xs-6"><strong>14. What aspects of the training could
                                        be improved?<font style="color: #ff0000">*</font>
                                    </strong></label>
                                    
                                    <s:textfield cssClass="form-control" id="improve" name="postTraining.canbeImproved"
                                                 value="%{postTraining.canbeImproved}"/>
                                </div>
                            </div>
                        </td>
                    </tr>


                    <!---------------- Number 15------------------------>

                    <tr>
                        <td>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-xs-12 col-md-12">
                                        <label for="otherComments" class="col-xs-12"><strong>Other
                                            Comments</strong></label>
                                        <s:textarea cssClass="form-control" id="otherComments"
                                                    name="postTraining.otherComments"
                                                    value="%{postTraining.otherComments}"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>

                <h3>THANK YOU FOR YOUR PARTICIPATION! </h3>

                <table class="inputform">
                    <colgroup>
                        <col width="200px"/>
                        <col/>
                    </colgroup>
                    <tr>
                        <td></td>
                        <td><s:submit cssClass="btn btn-primary pull-right"
                                      action="save-evaluation" value="Submit Form"
                                      onclick="if(confirm('Submit your Registeration form ?')){return true;}else{return false;}"/>
                    </tr>
                </table>

                </s:form>
                <div class="clearfix">&nbsp;</div>
</div>

</body>
</html>