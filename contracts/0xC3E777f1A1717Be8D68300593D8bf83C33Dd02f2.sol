contract main {




// =====================  Runtime code  =====================


mapping of struct player;
uint8 stor1; offset 253
uint256 stor1;
uint256 maxStake;
address owner;

function player(address arg1) {
    require calldata.size - 4 >= 32
    return player[arg1].field_0, player[arg1].field_256
}

function owner() {
    return owner
}

function maxStake() {
    return maxStake
}

function _fallback() payable {
    revert
}

function sub_7adc88d9(?) {
    Mask(253, 0, stor1.field_0) = eth.balance(this.address) / 8
    stor1.field_253 % 8 = 0
    return 1
}

function sub_753fab13(?) payable {
    Mask(253, 0, stor1.field_0) = eth.balance(this.address) / 8
    stor1.field_253 % 8 = 0
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function set() payable {
    require msg.value > 0
    require msg.value <= maxStake
    player[address(msg.sender)].field_0 = block.number + 1
    player[address(msg.sender)].field_256 = msg.value
    return 1
}

function getRand() {
    require block.hash(player[address(msg.sender)].field_0)
    mem[224 len 128] = code.data[2369 len 128]
    idx = 0
    s = 0
    while idx < 4:
        mem[(32 * idx) + 224] = block.hash(player[address(msg.sender)].field_0) and 65535 * 2^s / 2^s
        idx = idx + 1
        s = s + 32
        continue 
    return memory
      from 224
       len 128
}

function collect(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(253, 0, stor1.field_0) = eth.balance(this.address) / 8
    stor1.field_253 % 8 = 0
    return 1
}

function claim() payable {
    require block.hash(player[address(msg.sender)].field_0)
    mem[352 len 128] = code.data[2369 len 128]
    idx = 0
    s = 0
    while idx < 4:
        mem[(32 * idx) + 352] = block.hash(player[address(msg.sender)].field_0) and 65535 * 2^s / 2^s
        idx = idx + 1
        s = s + 32
        continue 
    player[address(msg.sender)].field_0 = 0
    player[address(msg.sender)].field_256 = 0
    idx = 0
    s = 0
    while idx < 4:
        if mem[(32 * idx) + 352] >= 8110:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        if not player[address(msg.sender)].field_256:
            call msg.sender with:
                 gas 2300 wei
        else:
            require player[address(msg.sender)].field_256
            require 2 * player[address(msg.sender)].field_256 / player[address(msg.sender)].field_256 == 2
            if not player[address(msg.sender)].field_256:
                call msg.sender with:
                     gas 2300 wei
            else:
                require 2 * player[address(msg.sender)].field_256
                require 2 * player[address(msg.sender)].field_256 * s / 2 * player[address(msg.sender)].field_256 == s
                call msg.sender with:
                   value 2 * player[address(msg.sender)].field_256 * s wei
                     gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        Mask(253, 0, stor1.field_0) = eth.balance(this.address) / 8
        stor1.field_253 % 8 = 0
    return 1
}



}
