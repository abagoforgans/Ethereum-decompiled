contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
uint256 stor4;

function _fallback() payable {
    stor2 = 0xbbc79794599b19274850492394004087cbf89710
    stor3 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    stor4 = 415910 * 3600
    stor0 = msg.sender
    return code.data[265 len 3239]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
address stor2;
address stor3;
uint256 startTime;

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function sub_ea15e6c1(?) {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xb8b9aa59: 4
}

function sub_88c06f88(?) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
    if not ext_call.success:
        emit 0xb8b9aa59: 3
    else:
        emit 0xb8b9aa59: 2
}

function sub_cb8e4342(?) {
    require msg.sender == owner
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit 0xb8b9aa59: 7
}

function sub_bf5cc709(?) {
    if block.timestamp < startTime:
        emit 0xb8b9aa59: 6
    else:
        if block.timestamp >= startTime + 3600:
            emit 0xb8b9aa59: 6
        else:
            if eth.balance(this.address) <= 0:
                emit 0xb8b9aa59: 6
            else:
                require ext_code.size(stor2)
                call stor2.contributeETH() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining - 9710 wei
                require ext_call.success
                emit 0xb8b9aa59: 5
}

function _fallback() payable {
    if block.timestamp >= startTime:
        if block.timestamp < startTime + 3600:
            if eth.balance(this.address) > 0:
                if block.timestamp < startTime:
                    emit 0xb8b9aa59: 6
                else:
                    if block.timestamp >= startTime + 3600:
                        emit 0xb8b9aa59: 6
                    else:
                        if eth.balance(this.address) <= 0:
                            emit 0xb8b9aa59: 6
                        else:
                            require ext_code.size(stor2)
                            call stor2.contributeETH() with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining - 9710 wei
                            require ext_call.success
                            emit 0xb8b9aa59: 5
    if msg.value > 0:
        emit 0xb8b9aa59: 1
}

function sendTransaction(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == owner
    if arg3.length:
        mem[ceil32(arg3.length) + 128] = mem[128]
        mem[ceil32(arg3.length) + 160 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
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
    if not ext_call.success:
        emit 0xb8b9aa59: 3
    else:
        emit 0xb8b9aa59: 2
}



}
