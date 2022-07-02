contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[159 len 5132]
}



// =====================  Runtime code  =====================


address owner;
address authorizedCallerAddress;
address stor2;
address stor3;
mapping of uint8 stor4;
uint256 stor5;
uint256 stor6;

function sub_819c5fa2(?) {
    return bool(stor4[arg1])
}

function owner() {
    return owner
}

function authorizedCaller() {
    return authorizedCallerAddress
}

function _fallback() payable {
    revert
}

function sub_29327a34(?) {
    require msg.sender == owner
    stor3 = arg1
    stor6 = arg2
}

function transferOwnership(address arg1, bytes32 arg2) {
    require msg.sender == owner
    stor2 = arg1
    stor5 = arg2
}

function sub_0155b3cb(?) {
    require bool(stor4[address(msg.sender)]) == 1
    emit Transaction(address(arg1), address(arg2), arg3);
}

function acceptOwnership(bytes32 arg1) {
    require msg.sender == stor2
    require sha3(arg1) == stor5
    owner = stor2
    emit NewOwner(stor2);
}

function sub_269b6c85(?) {
    require msg.sender == stor3
    require sha3(arg1) == stor6
    authorizedCallerAddress = stor3
    emit 0x8f3a8336: stor3
}

function sub_33b4dfea(?) {
    require msg.sender == authorizedCallerAddress
    create contract with 0 wei
                    code: code.data[3029 len 2060], address(this.address)
    require create.new_address
    stor4[address(create.new_address)] = 1
    emit 0x23330566: address(create.new_address)
    return address(create.new_address)
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == authorizedCallerAddress
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
}



}
