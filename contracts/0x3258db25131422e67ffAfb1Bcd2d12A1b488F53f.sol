contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 1
    stor1 = code.data[915 len 32]
    return code.data[60 len 855]
}



// =====================  Runtime code  =====================


uint256 version;
address previousPublishedVersionAddress;
array of uint256 attributes;

function getAttributes(address arg1) payable {
    return attributes[address(arg1)][0 len attributes[address(arg1)].length]
}

function version() payable {
    return version
}

function previousPublishedVersion() payable {
    return previousPublishedVersionAddress
}

function ipfsAttributeLookup(address arg1) payable {
    return attributes[arg1][0 len attributes[arg1].length]
}

function _fallback() payable {
  stop
}

function setAttributes(bytes arg1) payable {
    attributes[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    emit AttributesSet(block.timestamp, msg.sender);
}



}
