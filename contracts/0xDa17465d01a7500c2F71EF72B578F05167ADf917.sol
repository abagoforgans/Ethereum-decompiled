contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 54897
    require not msg.value
    stor0 = msg.sender
    return code.data[70 len 3193]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
mapping of struct sub_cf986b15;

function owner() {
    return owner
}

function sub_cf986b15(?) {
    require sub_cf986b15[arg1].field_480 <= 4
    return sub_cf986b15[arg1].field_0, sub_cf986b15[arg1].field_256, sub_cf986b15[arg1].field_256, sub_cf986b15[arg1].field_480
}

function withdrawFees() {
    call owner with:
       value stor1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor1 = 0
}

function sub_661c3287(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = mem[128 len 20]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_6fe81578(?) {
    require sub_cf986b15[address(arg1)].field_480 <= 4
    require sub_cf986b15[address(arg1)].field_480 <= 4
    return sub_cf986b15[address(arg1)].field_256, 
           sub_cf986b15[address(arg1)].field_0,
           eth.balance(arg1),
           sub_cf986b15[address(arg1)].field_256,
           sub_cf986b15[address(arg1)].field_480
}

function sub_b82850a3(?) {
    require sub_cf986b15[address(arg1)].field_480 <= 4
    require owner == msg.sender
    require sub_cf986b15[address(arg1)].field_0 >= 0
    require sub_cf986b15[address(arg1)].field_416 + (8760 * 24 * 3600) < block.timestamp
    call msg.sender with:
       value sub_cf986b15[address(arg1)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_cf986b15[address(arg1)].field_256 = sub_cf986b15[address(arg1)].field_256
    sub_cf986b15[address(arg1)].field_416 = sub_cf986b15[address(arg1)].field_416
    sub_cf986b15[address(arg1)].field_480 = 4
}

function sub_e6b6c3d2(?) {
    require sub_cf986b15[address(arg1)].field_480 <= 4
    require sub_cf986b15[address(arg1)].field_480 <= 4
    require sub_cf986b15[address(arg1)].field_480 == 1
    require sub_cf986b15[address(arg1)].field_256 == msg.sender
    call msg.sender with:
       value sub_cf986b15[address(arg1)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_cf986b15[address(arg1)].field_256 = sub_cf986b15[address(arg1)].field_256
    sub_cf986b15[address(arg1)].field_416 = sub_cf986b15[address(arg1)].field_416
    sub_cf986b15[address(arg1)].field_480 = 3
}

function redeem(address arg1) payable {
    require sub_cf986b15[address(msg.sender)].field_480 <= 4
    require sub_cf986b15[address(msg.sender)].field_480 <= 4
    require sub_cf986b15[address(msg.sender)].field_480 == 1
    require sub_cf986b15[address(msg.sender)].field_0 > 0
    call arg1 with:
       value sub_cf986b15[address(msg.sender)].field_0 + msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_cf986b15[address(msg.sender)].field_256 = sub_cf986b15[address(msg.sender)].field_256
    sub_cf986b15[address(msg.sender)].field_416 = sub_cf986b15[address(msg.sender)].field_416
    sub_cf986b15[address(msg.sender)].field_480 = 2
    emit Redeem(address(arg1), sub_cf986b15[address(msg.sender)].field_0, msg.sender);
}

function sub_ea4eb50b(?) payable {
    require sub_cf986b15[address(arg1)].field_480 <= 4
    require not sub_cf986b15[address(arg1)].field_0
    require msg.value > block.gasprice * stor2
    require arg2 + 1000
    stor1 = msg.value - (block.gasprice * stor2) - ((1000 * msg.value) - (1000 * block.gasprice * stor2) / arg2 + 1000) + stor1
    call arg1 with:
       value block.gasprice * stor2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_cf986b15[address(arg1)].field_0 = (block.gasprice * stor2) + ((1000 * msg.value) - (1000 * block.gasprice * stor2) / arg2 + 1000) - (block.gasprice * stor2)
    sub_cf986b15[address(arg1)].field_256 = msg.sender
    sub_cf986b15[address(arg1)].field_416 = uint64(block.timestamp)
    sub_cf986b15[address(arg1)].field_480 = 1
    emit 0xf9c1d9f0: ((block.gasprice * stor2) + ((1000 * msg.value) - (1000 * block.gasprice * stor2) / arg2 + 1000) - (block.gasprice * stor2)), arg1, msg.sender
}

function _fallback() payable {
    if calldata.size == 20:
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        require sub_cf986b15[Mask(160, 96, mem[128])].field_480 <= 4
        require not sub_cf986b15[Mask(160, 96, mem[128])].field_0
        require msg.value > block.gasprice * stor2
        stor1 = msg.value - (block.gasprice * stor2) - ((1000 * msg.value) - (1000 * block.gasprice * stor2) / 1010) + stor1
        call mem[128 len 20] with:
           value block.gasprice * stor2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        sub_cf986b15[Mask(160, 96, mem[128])].field_0 = (block.gasprice * stor2) + ((1000 * msg.value) - (1000 * block.gasprice * stor2) / 1010) - (block.gasprice * stor2)
        sub_cf986b15[Mask(160, 96, mem[128])].field_256 = msg.sender
        sub_cf986b15[Mask(160, 96, mem[128])].field_416 = uint64(block.timestamp)
        sub_cf986b15[Mask(160, 96, mem[128])].field_480 = 1
        emit 0xf9c1d9f0: ((block.gasprice * stor2) + ((1000 * msg.value) - (1000 * block.gasprice * stor2) / 1010) - (block.gasprice * stor2)), mem[128 len 20], msg.sender
    else:
        require calldata.size == 21
        if calldata.size == 20:
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            require sub_cf986b15[Mask(160, 96, mem[128])].field_480 <= 4
            require not sub_cf986b15[Mask(160, 96, mem[128])].field_0
            require msg.value > block.gasprice * stor2
            stor1 = msg.value - (block.gasprice * stor2) - ((1000 * msg.value) - (1000 * block.gasprice * stor2) / 1010) + stor1
            call mem[128 len 20] with:
               value block.gasprice * stor2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            sub_cf986b15[Mask(160, 96, mem[128])].field_0 = (block.gasprice * stor2) + ((1000 * msg.value) - (1000 * block.gasprice * stor2) / 1010) - (block.gasprice * stor2)
            sub_cf986b15[Mask(160, 96, mem[128])].field_256 = msg.sender
            sub_cf986b15[Mask(160, 96, mem[128])].field_416 = uint64(block.timestamp)
            sub_cf986b15[Mask(160, 96, mem[128])].field_480 = 1
            emit 0xf9c1d9f0: ((block.gasprice * stor2) + ((1000 * msg.value) - (1000 * block.gasprice * stor2) / 1010) - (block.gasprice * stor2)), mem[128 len 20], msg.sender
        else:
            if calldata.size == 21:
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                require 20 < calldata.size
                require sub_cf986b15[Mask(160, 96, mem[128])].field_480 <= 4
                require not sub_cf986b15[Mask(160, 96, mem[128])].field_0
                require msg.value > block.gasprice * stor2
                require uint8(cd[20]) + 1000
                stor1 = msg.value - (block.gasprice * stor2) - ((1000 * msg.value) - (1000 * block.gasprice * stor2) / uint8(cd[20]) + 1000) + stor1
                call mem[128 len 20] with:
                   value block.gasprice * stor2 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                sub_cf986b15[Mask(160, 96, mem[128])].field_0 = (block.gasprice * stor2) + ((1000 * msg.value) - (1000 * block.gasprice * stor2) / uint8(cd[20]) + 1000) - (block.gasprice * stor2)
                sub_cf986b15[Mask(160, 96, mem[128])].field_256 = msg.sender
                sub_cf986b15[Mask(160, 96, mem[128])].field_416 = uint64(block.timestamp)
                sub_cf986b15[Mask(160, 96, mem[128])].field_480 = 1
                emit 0xf9c1d9f0: ((block.gasprice * stor2) + ((1000 * msg.value) - (1000 * block.gasprice * stor2) / uint8(cd[20]) + 1000) - (block.gasprice * stor2)), mem[128 len 20], msg.sender
}



}
