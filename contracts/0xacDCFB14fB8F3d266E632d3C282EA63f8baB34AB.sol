contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
array of uint256 stor7;
uint256 stor5BF3;
uint256 stor7DE6;
uint256 storA66C;
uint256 storA66C;
uint256 storA66C;
uint256 storB62C;
uint256 storE17F;

function _fallback() payable {
    stor0 = 0
    stor1 = 0x26588a9301b0428d95e6fc3a5024fce8bec12d51
    stor2 = msg.sender or Mask(96, 160, stor2)
    require 0 < stor7.length
    stor7 = 0x96388ed71ebb5d970d8c40d08f33931fc80bd2768fd60f12b78e085d12441b0e
    require 1 < stor7.length
    storA66C = 0xfa8871e962875d078135f1c5b27b0f184ab6f4dff8641dd81032226ea0ae9e8c
    require 2 < stor7.length
    storA66C = sha3('Wolfram')
    require 3 < stor7.length
    storA66C = sha3('WolframAlpha')
    stor5BF3 = 10
    storB62C = 10
    stor7DE6 = 30
    storE17F = 30
    return code.data[711 len 1887]
}



// =====================  Runtime code  =====================


uint256 stor0;
address sub_4c773795Address;
address stor2;
mapping of uint8 sub_980bfd4e;
uint256 stor4;
mapping of uint256 price;
mapping of uint256 sub_c21b6291;
array of uint256 stor7;

function sub_4c773795(?) payable {
    return sub_4c773795Address
}

function price(bytes32 arg1) payable {
    return price[arg1]
}

function sub_980bfd4e(?) payable {
    return sub_980bfd4e[arg1]
}

function sub_c21b6291(?) payable {
    return sub_c21b6291[arg1]
}

function _fallback() payable {
  stop
}

function getPrice(string arg1) payable {
    require price[arg1[all]] > 0
    if sub_980bfd4e[address(msg.sender)]:
        return price[arg1[all]]
    sub_980bfd4e[address(msg.sender)] = 1
    return 0
}

function setBasePrice(uint256 arg1) payable {
    if stor2 != msg.sender:
        require msg.sender == sub_4c773795Address
    stor4 = arg1
    idx = 0
    while idx < stor7.length:
        mem[0] = stor7[idx]
        mem[32] = 5
        price[stor7[idx]] = arg1 * sub_c21b6291[stor7[idx]]
        idx = idx + 1
        continue 
}

function query(uint256 arg1, string arg2, string arg3) payable {
    require price[arg2[all]] > 0
    if sub_980bfd4e[address(msg.sender)]:
        require eth.balance(this.address) >= price[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value price[arg2[all]] wei
             gas 0 wei
    else:
        sub_980bfd4e[address(msg.sender)] = 1
        require eth.balance(this.address) >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
    stor0++
    emit 0x10e5a063: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160
    return sha3(stor0 + block.timestamp)
}

function sub_a4c8a1c1(?) payable {
    require price[arg2[all]] > 0
    if sub_980bfd4e[address(msg.sender)]:
        require eth.balance(this.address) >= price[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value price[arg2[all]] wei
             gas 0 wei
    else:
        sub_980bfd4e[address(msg.sender)] = 1
        require eth.balance(this.address) >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
    stor0++
    if not arg3.length % 32:
        emit 0x97b98c12: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg3.length + arg2.length + 224
    else:
        emit 0x97b98c12: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, floor32(arg3.length) + arg2.length + 256
    return sha3(stor0 + block.timestamp)
}



}
