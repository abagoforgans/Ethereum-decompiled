contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[914 len 32]
    stor2 = 0
    return code.data[70 len 844]
}



// =====================  Runtime code  =====================


address owner;
uint256 price;
uint8 stor2;
array of uint256 keys;

function closed() payable {
    return bool(stor2)
}

function keys(address arg1) payable {
    return keys[arg1][0 len keys[arg1].length]
}

function owner() payable {
    return owner
}

function price() payable {
    return price
}

function _fallback() payable {
  stop
}

function sub_0b7087ba(?) payable {
    require owner == msg.sender
    stor2 = 1
}

function setNewPrice(uint256 arg1) payable {
    require owner == msg.sender
    price = arg1
}

function sub_6fd1ce48(?) payable {
    require msg.value >= price
    require not stor2
    keys[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 0 wei
}



}
