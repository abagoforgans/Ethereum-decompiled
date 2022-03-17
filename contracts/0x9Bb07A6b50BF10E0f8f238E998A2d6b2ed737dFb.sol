contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 0
    stor1 = 0x26588a9301b0428d95e6fc3a5024fce8bec12d51
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[78 len 1687]
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
    require stor2 == msg.sender
    price[arg1[all]] = arg2
}

function query(uint256 arg1, string arg2, string arg3) payable {
    require eth.balance(this.address) >= price[arg2[all]]
    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
       value price[arg2[all]] wei
         gas 0 wei
    stor0++
    emit 0x10e5a063: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160
    return sha3(stor0 + block.timestamp)
}

function sub_a4c8a1c1(?) payable {
    require eth.balance(this.address) >= price[arg2[all]]
    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
       value price[arg2[all]] wei
         gas 0 wei
    stor0++
    if not arg3.length % 32:
        emit 0x97b98c12: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg3.length + arg2.length + 224
    else:
        emit 0x97b98c12: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, floor32(arg3.length) + arg2.length + 256
    return sha3(stor0 + block.timestamp)
}



}
