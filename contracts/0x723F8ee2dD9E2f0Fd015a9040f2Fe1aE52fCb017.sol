contract main {


// =======================  Init code  ======================


uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
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
    stor5 = 250879
    stor6 = 1
    return code.data[815 len 2095]
}



// =====================  Runtime code  =====================


address sub_84313024Address;
uint256 stor0;
address contractOwner;
array of struct stor2;
array of uint256 contractVersion;
array of uint256 contractName;
uint256 sub_901a66e2;
uint256 stor6;

function getContractOwner() payable {
    return contractOwner
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

function sub_d51eeafd(?) payable {
    if msg.sender == contractOwner:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_ebfad501(?) payable {
    if msg.sender == contractOwner:
        stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function sub_a2407de3(?) payable {
    if stor6 == 1:
        mem[256] = Mask(80, 88, 'profile not setup yet') >> 88, mem[277 len 11]
        return Array(len=21, data=mem[256])
    mem[160] = uint256(stor2.field_0)
    idx = 160
    s = 0
    while stor2.length + 128 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor2.length, data=mem[160 len stor2.length])
}



}
