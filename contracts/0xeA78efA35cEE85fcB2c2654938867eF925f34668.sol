contract main {


// =======================  Init code  ======================


uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;
uint256 stor9;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    bool(stor3.length) = 0
    stor3.length.field_1 = 11
    stor3.length.field_8 = 'not yet set' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 29
    stor4.length.field_8 = 'v0.0.0.0.5 - superduper alpha' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[256] = 'infoBlob - the self serving univ'
    mem[288] = 'ersal login and ID'
    stor5.length = 101
    s = 0
    idx = 256
    while 306 > idx:
        stor5[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor5.length + 31 / 32 > idx:
        stor5[idx] = 0
        idx = idx + 1
        continue 
    stor6 = 250879
    stor7 = 1
    stor8 = 1
    stor9 = block.timestamp
    return code.data[850 len 2585]
}



// =====================  Runtime code  =====================


address sub_84313024Address;
uint256 stor0;
address contractOwner;
address contractAddress;
uint256 stor2;
array of uint256 sub_a2407de3;
array of uint256 contractVersion;
array of uint256 contractName;
uint256 sub_901a66e2;
uint8 sub_6a5ef271;
uint256 sub_2a2764a2;

function sub_2a2764a2(?) payable {
    return sub_2a2764a2
}

function getContractAddress() payable {
    return address(contractAddress)
}

function getContractOwner() payable {
    return contractOwner
}

function sub_6a5ef271(?) payable {
    return sub_6a5ef271
}

function sub_84313024(?) payable {
    return address(sub_84313024Address)
}

function getContractVersion() payable {
    return contractVersion[0 len contractVersion.length]
}

function sub_901a66e2(?) payable {
    return sub_901a66e2
}

function sub_a2407de3(?) payable {
    return sub_a2407de3[0 len sub_a2407de3.length]
}

function getContractName() payable {
    return contractName[0 len contractName.length]
}

function kill() payable {
    if contractOwner != msg.sender:
    selfdestruct(contractOwner)
}

function _fallback() payable {
  stop
}

function sub_a0723e60(?) payable {
    if msg.sender == contractOwner:
        sub_6a5ef271 = 0
    return sub_6a5ef271
}

function sub_d51eeafd(?) payable {
    if msg.sender == contractOwner:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_ebfad501(?) payable {
    if msg.sender == contractOwner:
        uint256(stor2) = this.address or Mask(96, 160, uint256(stor2))
        sub_a2407de3[] = Array(len=arg1.length, data=arg1[all])
}



}
