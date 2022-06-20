contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor2; offset 160
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    address(stor2.field_0) = msg.sender
    uint8(stor2.field_160) = 0
    return code.data[92 len 3758]
}



// =====================  Runtime code  =====================


address owner;
address authorizedCallerAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address hotWalletAddress;
address stor3;
address stor4;
address stor5;
mapping of uint8 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function hotWallet() {
    return hotWalletAddress
}

function paused() {
    return bool(uint8(stor2.field_160))
}

function sub_819c5fa2(?) {
    return bool(stor6[arg1])
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

function sub_1d7d40de(?) {
    require owner == msg.sender
    stor5 = arg1
    stor9 = arg2
}

function sub_29327a34(?) {
    require owner == msg.sender
    stor4 = arg1
    stor8 = arg2
}

function Paused(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1, bytes32 arg2) {
    require owner == msg.sender
    stor3 = arg1
    stor7 = arg2
}

function sub_0155b3cb(?) {
    require 1 == bool(stor6[address(msg.sender)])
    emit Transaction(address(arg1), address(arg2), arg3);
}

function sub_5305a52a(?) {
    require stor5 == msg.sender
    require sha3(arg1) == stor9
    hotWalletAddress = stor5
    emit 0xe7c5cf0b: stor5
}

function acceptOwnership(bytes32 arg1) {
    require stor3 == msg.sender
    require sha3(arg1) == stor7
    owner = stor3
    emit NewOwner(stor3);
}

function sub_269b6c85(?) {
    require stor4 == msg.sender
    require sha3(arg1) == stor8
    authorizedCallerAddress = stor4
    emit 0x8f3a8336: stor4
}

function sub_33b4dfea(?) {
    require authorizedCallerAddress == msg.sender
    create contract with 0 wei
                    code: code.data[2047 len 1668], address(this.address)
    require create.new_address
    stor6[address(create.new_address)] = 1
    emit 0x23330566: address(create.new_address)
    return address(create.new_address)
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require owner == msg.sender
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
}



}
