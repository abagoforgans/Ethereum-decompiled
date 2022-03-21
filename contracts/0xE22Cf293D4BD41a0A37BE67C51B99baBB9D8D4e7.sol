contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0x748defc02aa6221ae4db129bbe7e6a97537a6f45
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[74 len 332]
}



// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
  stop
}

function withdraw() payable {
    require stor1 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function bet(uint256 arg1) payable {
    mem[64] = 96
    if var10002 != 0:
        if var10002 != 1:
            if 7 == var10001:
                var10001 = var10001
                var10002 = var10002
                var10003 = var10003
                continue 
    var10001 = mulmod(arg1 + var10003 + block.timestamp + 1, 0, 50)
    var10002 = mulmod(arg1 + var10003 + 1, 0, 6)
    var10003 = var10003 + 1
    continue 
}



}
