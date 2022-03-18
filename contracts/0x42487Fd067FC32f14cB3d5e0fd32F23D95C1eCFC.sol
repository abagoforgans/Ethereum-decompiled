contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 1
    stor1 = code.data[853 len 32]
    return code.data[60 len 793]
}



// =====================  Runtime code  =====================


uint256 version;
address previousPublishedVersionAddress;
array of uint256 ipfsAttributeLookup;

function version() payable {
    return version
}

function previousPublishedVersion() payable {
    return previousPublishedVersionAddress
}

function ipfsAttributeLookup(address arg1) payable {
    return ipfsAttributeLookup[arg1][0 len ipfsAttributeLookup[arg1].length]
}

function getPersonaAttributes(address arg1) payable {
    return ipfsAttributeLookup[address(arg1)][0 len ipfsAttributeLookup[address(arg1)].length]
}

function _fallback() payable {
  stop
}

function setPersonaAttributes(bytes arg1) payable {
    ipfsAttributeLookup[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}



}
