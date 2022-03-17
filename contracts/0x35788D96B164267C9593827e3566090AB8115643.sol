contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 0
    stor1 = 0x26588a9301b0428d95e6fc3a5024fce8bec12d51
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[134 len 2999]
}



// =====================  Runtime code  =====================


uint256 stor0;
address sub_4c773795Address;
address stor2;
mapping of uint256 price;

function sub_4c773795(?) payable {
    return sub_4c773795Address
}

function getPrice(string arg1) payable {
    return price[arg1[all]]
}

function price(bytes32 arg1) payable {
    return price[arg1]
}

function _fallback() payable {
  stop
}

function setPrice(string arg1, uint256 arg2) payable {
    require msg.sender == stor2
    price[arg1[all]] = arg2
}

function query(uint256 arg1, string arg2, string arg3) payable {
    require eth.balance(this.address) >= price[arg2[all]]
    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
       value price[arg2[all]] wei
         gas 0 wei
    stor0++
    emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160
    return sha3(block.timestamp + stor0)
}

function sub_a4c8a1c1(?) payable {
    require eth.balance(this.address) >= price[arg2[all]]
    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
       value price[arg2[all]] wei
         gas 0 wei
    stor0++
    if not arg3.length % 32:
        emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg3.length + arg2.length + 224
    else:
        emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, floor32(arg3.length) + arg2.length + 256
    return sha3(block.timestamp + stor0)
}

function sub_0f8ebe27(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    if arg2.length >= arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]):
                return -1
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]):
                idx = idx + 1
                continue 
            return 1
    else:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]):
                return -1
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]):
                idx = idx + 1
                continue 
            return 1
    if arg1.length < arg2.length:
        return -1
    if arg1.length <= arg2.length:
        return 0
    return 1
}



}
