contract main {


// =======================  Init code  ======================


uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint8 stor6;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    bool(stor3.length) = 0
    stor3.length.field_1 = 29
    stor3.length.field_8 = 'v0.0.0.0.2 - superduper alpha' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[192] = 'infoBlob - the self serving univ'
    mem[224] = 'ersal login and ID'
    stor4.length = 101
    s = 0
    idx = 192
    while 242 > idx:
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
    stor6 = 1
    return code.data[597 len 1852]
}



// =====================  Runtime code  =====================


address sub_84313024Address;
uint256 stor0;
address contractOwner;
array of uint256 sub_a2407de3;
array of uint256 contractVersion;
array of uint256 contractName;
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

function sub_d51eeafd(?) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_ebfad501(?) payable {
    sub_a2407de3[] = Array(len=arg1.length, data=arg1[all])
}



}
