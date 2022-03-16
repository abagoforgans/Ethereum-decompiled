contract main {


// =======================  Init code  ======================


uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;

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
    stor3.length.field_8 = 'v0.0.0.0.2 - superduper alpha' / 256
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
    stor7 = 1
    return code.data[840 len 1977]
}



// =====================  Runtime code  =====================


address sub_84313024Address;
uint256 stor0;
address contractOwner;
array of uint256 sub_a2407de3;
array of uint256 contractVersion;
array of uint256 contractName;
uint256 sub_901a66e2;
uint256 stor6;
uint8 sub_3412a181;

function sub_3412a181(?) payable {
    return sub_3412a181
}

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

function sub_ebfad501(?) payable {
    sub_a2407de3[] = Array(len=arg1.length, data=arg1[all])
    sub_3412a181 = 0
}

function sub_d51eeafd(?) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    stor6 = 2
    sub_3412a181 = 0
}



}
