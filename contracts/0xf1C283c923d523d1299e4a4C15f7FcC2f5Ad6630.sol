contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
array of address stor3;
array of uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor1 = 3181818181818
    stor2 = 0x6ab3fa07646047b942e606525ccdfd7515f3ad58
    mem[96] = 0x6ab3fa07646047b942e606525ccdfd7515f3ad58
    mem[128] = 0x519f1edd9171265182e143e1c3fe71990281bff0
    mem[160] = 0x837919a01261e5987afae7e6ee601dc57cbebd19
    mem[192] = 0xf43fcd7eae10df50848a03b4cbcd8abba5ec6fbe
    stor3.length = 4
    s = 0
    idx = 96
    while 224 > idx:
        uint256(stor3[s]) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while stor3.length > idx:
        address(stor3[idx]) = 0
        idx = idx + 1
        continue 
    mem[224] = 2
    mem[256] = 3
    mem[288] = 4
    mem[320] = 3
    stor4.length = 4
    s = 0
    idx = 224
    while 352 > idx:
        stor4[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while stor4.length > idx:
        stor4[idx] = 0
        idx = idx + 1
        continue 
    stor5 = 12
    stor0 = block.timestamp
    return code.data[568 len 591]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
address stor2;
array of address stor3;
array of uint256 stor4;
uint256 stor5;

function _fallback() payable {
  stop
}

function sub_293f0516(?) payable {
    if msg.sender == stor2:
        stor1 = arg1
}

function distribute() payable {
    call stor2 with:
       value (block.timestamp * stor1) - (stor0 * stor1) wei
         gas 0 wei
    stor0 = block.timestamp
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < stor3.length:
        require uint8(idx) < stor4.length
        require uint8(idx) < stor3.length
        mem[0] = 3
        call stor3[uint8(idx)] with:
           value ((t * eth.balance(this.address)) + (stor4[uint8(idx)] * eth.balance(this.address)) / stor5) - s wei
             gas 0 wei
        s = (t * eth.balance(this.address)) + (stor4[uint8(idx)] * eth.balance(this.address)) / stor5
        s = t + stor4[uint8(idx)]
        idx = idx + 1
        s = (t * eth.balance(this.address)) + (stor4[uint8(idx)] * eth.balance(this.address)) / stor5
        t = t + stor4[uint8(idx)]
        continue 
}



}
