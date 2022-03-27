contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 2077]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint256 accountBalances;

function accountBalances(address arg1) {
    return accountBalances[arg1]
}

function owner() {
    return owner
}

function _fallback() payable {
    accountBalances[address(msg.sender)] += msg.value
}

function sub_36b196cf(?) {
    require owner == msg.sender
    stor1[address(arg1)] = 1
}

function transferOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_66bc5fa8(?) {
    require owner == msg.sender
    stor1[address(arg1)] = 1
}

function deposit(address arg1) payable {
    accountBalances[address(arg1)] += msg.value
}

function withdraw(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)]
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}

function withdrawFrom(address arg1, address arg2, uint256 arg3) {
    require stor1[address(msg.sender)]
    require arg3 <= accountBalances[address(arg1)]
    require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
    delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x3ef5e445 with:
         gas gas_remaining - 50 wei
        args accountBalances[address(arg1)], arg3
    require delegate.return_code
    accountBalances[address(arg1)] = delegate.return_data[0]
    call arg2 with:
       value arg3 wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require stor1[address(msg.sender)]
    require arg3 <= accountBalances[address(arg1)]
    require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
    delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x3ef5e445 with:
         gas gas_remaining - 50 wei
        args accountBalances[address(arg1)], arg3
    require delegate.return_code
    accountBalances[address(arg1)] = delegate.return_data[0]
    require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
    delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x771602f7 with:
         gas gas_remaining - 50 wei
        args accountBalances[arg2], arg3
    require delegate.return_code
    accountBalances[address(arg2)] = delegate.return_data[0]
}

function sub_506d994b(?) {
    mem[128 len arg4.length] = arg4[all]
    require stor1[address(msg.sender)]
    require arg3 <= accountBalances[address(arg1)]
    mem[ceil32(arg4.length) + 132] = accountBalances[address(arg1)]
    mem[ceil32(arg4.length) + 164] = arg3
    require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
    delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x3ef5e445 with:
         gas gas_remaining - 50 wei
        args accountBalances[address(arg1)], arg3
    mem[ceil32(arg4.length) + 128] = delegate.return_data[0]
    require delegate.return_code
    accountBalances[address(arg1)] = delegate.return_data[0]
    mem[ceil32(arg4.length) + 128 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    mem[ceil32(arg4.length) + 128] = Mask(32, 224, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + floor32(arg4.length) + 128 len arg4.length % 32]))
    call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
       value arg3 wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}



}
