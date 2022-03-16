contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor6;
uint8 stor7;
uint256 stor8;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor6 = 250879
    stor7 = 1
    stor8 = block.timestamp
    return code.data[111 len 1978]
}



// =====================  Runtime code  =====================


address sub_84313024Address;
uint256 stor0;
address contractOwner;
address contractAddress;
uint256 stor2;
array of struct stor3;
uint256 stor4;
uint256 stor5;
uint256 sub_901a66e2;
uint8 sub_6a5ef271;
uint256 sub_09bf6c70;

function sub_09bf6c70(?) payable {
    return sub_09bf6c70
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

function sub_901a66e2(?) payable {
    return sub_901a66e2
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

function sub_a2407de3(?) payable {
    if stor3.length:
        mem[160] = uint256(stor3.field_0)
        idx = 160
        s = 0
        while stor3.length + 128 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor3.length, data=mem[160 len stor3.length])
}

function withdrawEth() payable {
    if msg.sender == contractOwner:
        if block.timestamp - stor4 / 24 * 3600 > 0:
            if stor5 * block.timestamp - stor4 / 24 * 3600 <= eth.balance(this.address):
                call contractOwner with:
                   value stor5 * block.timestamp - stor4 / 24 * 3600 wei
                     gas 0 wei
                stor4 = block.timestamp
                sub_6a5ef271 = 0
    return sub_6a5ef271
}

function sub_ebfad501(?) payable {
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == contractOwner:
        uint256(stor2) = this.address or Mask(96, 160, uint256(stor2))
        stor3.length = arg1.length
        if not arg1.length:
            idx = 0
            while stor3.length + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while arg1.length + 128 > idx:
                stor3[s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor3.length + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
}



}
