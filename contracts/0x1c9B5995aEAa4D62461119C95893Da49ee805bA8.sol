contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor2;
uint8 stor3;
uint8 stor3; offset 8

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_00c6a1f4(?) {
    require msg.sender == owner
    stor1 = arg1
}

function sub_3d4b0b6e(?) {
    require msg.sender == owner
    uint8(stor3.field_8) = arg1
}

function sub_f413b9ba(?) {
    require msg.sender == owner
    uint8(stor3.field_0) = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_86869cbe(?) payable {
    mem[64] = 96
    require ('cd', 4).length > 0
    require ('cd', 4).length <= uint8(stor3.field_0)
    if not ('cd', 4).length:
        require not msg.value
    else:
        require stor2 * ('cd', 4).length / ('cd', 4).length == stor2
        require msg.value == stor2 * ('cd', 4).length
    idx = 0
    s = 0
    s = 0
    s = 0
    while ('cd', 4).length > uint8(idx):
        require uint8(idx) < ('cd', 4).length
        require ext_code.size(stor1)
        call stor1.playerRollDice(uint256 arg1) with:
           value stor2 wei
             gas gas_remaining wei
            args (cd[((32 * uint8(idx)) + cd[4] + 36)] << 248)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = eth.balance(this.address)
        mem[mem[64] + 32] = eth.balance(this.address)
        emit 0xb3edeb27: eth.balance(this.address), eth.balance(this.address)
        if eth.balance(this.address) == eth.balance(this.address) + 1:
            require uint8(idx) < ('cd', 4).length
            mem[mem[64]] = uint8(idx)
            mem[mem[64] + 32] = stor2
            mem[mem[64] + 64] = uint8(cd[((32 * uint8(idx)) + cd[4] + 36)])
            mem[mem[64] + 128] = 1
            mem[mem[64] + 96] = 160
            mem[mem[64] + 160] = 4
            mem[mem[64] + 192] = 'loss'
            emit 0xbb4a5ade: idx << 248, stor2, cd[((32 * uint8(idx)) + cd[4] + 36)] << 248, Array(len=4, data='loss'), 1, msg.sender
            idx = idx + 1
            s = eth.balance(this.address)
            s = eth.balance(this.address)
            s = s + 1
            continue 
        if eth.balance(this.address) <= eth.balance(this.address) + 1:
            idx = idx + 1
            s = eth.balance(this.address)
            s = eth.balance(this.address)
            s = s
            continue 
        require eth.balance(this.address) <= eth.balance(this.address)
        require stor2 >= 0
        require stor2 + s >= s
        require uint8(idx) < ('cd', 4).length
        mem[mem[64]] = uint8(idx)
        mem[mem[64] + 32] = stor2
        mem[mem[64] + 64] = uint8(cd[((32 * uint8(idx)) + cd[4] + 36)])
        mem[mem[64] + 128] = stor2
        mem[mem[64] + 96] = 160
        mem[mem[64] + 160] = 3
        mem[mem[64] + 192] = 'win'
        emit 0xbb4a5ade: idx << 248, stor2, cd[((32 * uint8(idx)) + cd[4] + 36)] << 248, Array(len=3, data='win'), stor2, msg.sender
        idx = idx + 1
        s = eth.balance(this.address)
        s = eth.balance(this.address)
        s = stor2 + s
        continue 
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xddbfbfff: ('cd', 4).length << 248, s, 0, msg.sender
}



}
