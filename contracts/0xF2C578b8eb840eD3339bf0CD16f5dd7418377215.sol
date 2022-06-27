contract main {




// =====================  Runtime code  =====================


array of uint256 currentText;
uint256 stor2;
array of uint256 sub_91352c18;
array of uint256 sub_31be9785;
array of uint256 ownerName;
array of uint256 sub_ebb1e96d;

function sub_31be9785(?) {
    return sub_31be9785[0 len sub_31be9785.length]
}

function ownerName() {
    return ownerName[0 len ownerName.length]
}

function sub_91352c18(?) {
    return sub_91352c18[0 len sub_91352c18.length]
}

function currentText() {
    return currentText[0 len currentText.length]
}

function sub_ebb1e96d(?) {
    return sub_ebb1e96d[0 len sub_ebb1e96d.length]
}

function _fallback() payable {
    revert
}

function setText(string arg1) {
    if arg1.length >= stor2:
        return 0
    currentText[] = Array(len=arg1.length, data=arg1[all])
    return 1
}



}
