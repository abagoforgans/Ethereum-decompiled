contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint8 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    require msg.sender == msg.sender
    if bool(stor2[address(msg.sender)]) != 1:
        stor2[address(msg.sender)] = 1
        emit RegistrantApproval(msg.sender);
    return code.data[178 len 2113]
}



// =====================  Runtime code  =====================


#
#  - fipsRegister(uint256 arg1, address arg2, bytes arg3)
#
address stor0;
mapping of address fipsOwner;
mapping of uint8 stor2;

function fipsOwner(bytes20 arg1) {
    return address(fipsOwner[Mask(160, 96, arg1)])
}

function _fallback() {
    revert 
}

function fipsIsRegistered(bytes20 arg1) {
    if address(fipsOwner[Mask(160, 96, arg1)]):
        return 1
    else:
        return 0
}

function registrantRemove(address arg1) {
    require stor0 == msg.sender
    if 1 == bool(stor2[address(arg1)]):
        stor2[address(arg1)] = 0
        emit RegistrantRemoval(arg1);
}

function registrantApprove(address arg1) {
    require stor0 == msg.sender
    if bool(stor2[address(arg1)]) != 1:
        stor2[address(arg1)] = 1
        emit RegistrantApproval(arg1);
}

function withdrawFunds() {
    require stor0 == msg.sender
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function fipsPublishData(bytes20 arg1, bytes arg2) {
    if stor0 != msg.sender:
        require address(fipsOwner[Mask(160, 96, arg1)]) == msg.sender
    emit FipsData(Array(len=arg2.length, data=arg2[all]), Mask(160, 96, arg1), msg.sender);
}

function fipsTransfer(bytes20 arg1, address arg2) {
    require address(fipsOwner[Mask(160, 96, arg1)]) == msg.sender
    require address(fipsOwner[Mask(160, 96, arg1)])
    uint256(fipsOwner[Mask(160, 96, arg1)]) = arg2 or Mask(96, 160, uint256(fipsOwner[Mask(160, 96, arg1)]))
    emit FipsTransfer(Mask(160, 96, arg1), msg.sender, arg2);
}

function fipsLegacyRegister(bytes20[] arg1, address arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 1 == bool(stor2[address(msg.sender)])
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require not address(fipsOwner[Mask(160, 96, mem[(32 * idx) + 128])])
        mem[0] = Mask(160, 96, mem[(32 * idx) + 128])
        mem[32] = 1
        uint256(fipsOwner[Mask(160, 96, mem[(32 * idx) + 128])]) = arg2 or Mask(96, 160, uint256(fipsOwner[Mask(160, 96, mem[(32 * idx) + 128])]))
        emit FipsRegistration(Mask(160, 96, mem[(32 * idx) + 128]), arg2);
        idx = idx + 1
        continue 
}



}
