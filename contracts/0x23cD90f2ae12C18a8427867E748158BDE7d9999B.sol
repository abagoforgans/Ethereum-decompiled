contract main {




// =====================  Runtime code  =====================


array of uint256 data_1;

function getData_1() {
    return data_1[0 len data_1.length]
}

function _fallback() payable {
    revert
}

function setData_1(string arg1) {
    data_1[] = Array(len=arg1.length, data=arg1[all])
}



}
