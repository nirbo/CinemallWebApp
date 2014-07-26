function validateFormFields(formID, submitButtonID) {
    var form = document.forms[formID].elements;
    var submitButton = document.getElementById(submitButtonID);
    var preventSubmit;

    for (var element = 0; element < form.length; element++) {
        if (form[element].value.length == 0) {
            preventSubmit = true;
        }
    }

    if (! preventSubmit) {
       submitButton.disabled = false;
    } else {
        submitButton.disabled = true;
    }
}

function disableSubmitButton(submitButtonID) {
    var submitButton = document.getElementById(submitButtonID);
    submitButton.disabled = true;
}

function deleteFromDB(row_id) {
    var form=document.messages;
    var idToDelete=row_id;
    form.method="post";
    form.action='db_delete.jsp?id='+idToDelete;
    form.submit();
}

function changeActiveState(row_id, state) {
    var form=document.messages;
    var id=row_id;
    var newState=state;
    form.method="post";
    form.action='active_state_change.jsp?id='+id+'&newState='+newState;
    form.submit();
}

function editMessage(row_id) {
    var form=document.messages;
    var id=row_id;
    form.method="post";
    form.action='edit_message.jsp?id='+id;
    form.submit();
}