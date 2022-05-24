contract main {




// =====================  Runtime code  =====================


uint256 storedData;

function storedData() {
    return storedData
}

function _fallback() payable {
    revert
}

function set(uint256 arg1) {
    storedData = arg1
    emit StorageSet(Array(len=25, data='Data stored successfully!'));
}



}
