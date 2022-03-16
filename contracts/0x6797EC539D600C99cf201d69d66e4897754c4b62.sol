contract main {


// =======================  Init code  ======================


uint256 stor4;
array of uint256 stor6;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor8 = 3
    mem[128] = 'koad's solidity compiler infoBlo'
    mem[160] = 'b'
    stor6.length = 67
    s = 0
    idx = 128
    while 161 > idx:
        stor6[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor6.length + 31 / 32 > idx:
        stor6[idx] = 0
        idx = idx + 1
        continue 
    stor9 = block.timestamp
    return code.data[352 len 5404]
}



// =====================  Runtime code  =====================


array of uint256 sub_5acbc516;
array of uint256 sub_e94ce41c;
array of uint256 sub_15180b32;
array of uint256 sub_d5f70876;
address ownerAddress;
uint256 stor4;
array of uint256 sub_61ac852b;
array of uint256 contractName;
array of uint256 sub_f37bac7e;
uint256 sub_381a8d9d;

function getOwnerAddress() payable {
    return address(ownerAddress)
}

function sub_15180b32(?) payable {
    return sub_15180b32[0 len sub_15180b32.length]
}

function sub_381a8d9d(?) payable {
    return sub_381a8d9d
}

function sub_5acbc516(?) payable {
    return sub_5acbc516[0 len sub_5acbc516.length]
}

function sub_61ac852b(?) payable {
    return sub_61ac852b[0 len sub_61ac852b.length]
}

function sub_d5f70876(?) payable {
    return sub_d5f70876[0 len sub_d5f70876.length]
}

function sub_e94ce41c(?) payable {
    return sub_e94ce41c[0 len sub_e94ce41c.length]
}

function sub_f37bac7e(?) payable {
    return sub_f37bac7e[0 len sub_f37bac7e.length]
}

function getContractName() payable {
    return contractName[0 len contractName.length]
}

function sub_1bb943fd(?) payable {
    if address(ownerAddress) != msg.sender:
    selfdestruct(address(ownerAddress))
}

function _fallback() payable {
  stop
}

function sub_3524e8b3(?) payable {
    sub_381a8d9d = arg1
}

function sub_1a03d342(?) payable {
    if msg.sender == address(ownerAddress):
        sub_d5f70876[] = Array(len=arg1.length, data=arg1[all])
}

function sub_32dea6a1(?) payable {
    if msg.sender == address(ownerAddress):
        sub_15180b32[] = Array(len=arg1.length, data=arg1[all])
}

function sub_62431d91(?) payable {
    if msg.sender == address(ownerAddress):
        sub_e94ce41c[] = Array(len=arg1.length, data=arg1[all])
}

function sub_9bb13a76(?) payable {
    if msg.sender == address(ownerAddress):
        sub_61ac852b[] = Array(len=arg1.length, data=arg1[all])
}

function sub_bc0e166a(?) payable {
    if msg.sender == address(ownerAddress):
        sub_f37bac7e[] = Array(len=arg1.length, data=arg1[all])
}

function sub_e4c9c4e9(?) payable {
    if msg.sender == address(ownerAddress):
        sub_5acbc516[] = Array(len=arg1.length, data=arg1[all])
}

function updateOwner(address arg1) payable {
    if msg.sender == address(ownerAddress):
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function setContractName(string arg1) payable {
    if msg.sender == address(ownerAddress):
        contractName[] = Array(len=arg1.length, data=arg1[all])
}



}
