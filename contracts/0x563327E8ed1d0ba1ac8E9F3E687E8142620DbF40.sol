contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor0 = msg.sender or Mask(96, 160, stor0)
    bool(stor2.length) = 0
    stor2.length.field_1 = 16
    stor2.length.field_8 = 'name not yet set' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 29
    stor3.length.field_8 = 'v0.0.0.0.1 - superduper alpha' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[256] = 'infoBlob - the self serving univ'
    mem[288] = 'ersal login and ID'
    stor4.length = 101
    s = 0
    idx = 256
    while 306 > idx:
        stor4[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor4.length + 31 / 32 > idx:
        stor4[idx] = 0
        idx = idx + 1
        continue 
    stor5 = 1
    return code.data[847 len 1837]
}



// =====================  Runtime code  =====================


address stor0;
address ownerAddress;
uint256 stor1;
array of uint256 sub_a2407de3;
array of uint256 contractVersion;
array of uint256 contractName;

function getOwnerAddress() payable {
    return address(ownerAddress)
}

function getContractVersion() payable {
    return contractVersion[0 len contractVersion.length]
}

function sub_a2407de3(?) payable {
    return sub_a2407de3[0 len sub_a2407de3.length]
}

function getContractName() payable {
    return contractName[0 len contractName.length]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function setOwnerName(string arg1) payable {
    if msg.sender == stor0:
        sub_a2407de3[] = Array(len=arg1.length, data=arg1[all])
}

function setOwnerAddress(address arg1) payable {
    if msg.sender == stor0:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}



}
