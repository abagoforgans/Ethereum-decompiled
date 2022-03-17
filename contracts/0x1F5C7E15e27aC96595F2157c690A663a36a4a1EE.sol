contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = code.data[1302 len 32]
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor0 = code.data[1270 len 32]
    return code.data[188 len 1082]
}



// =====================  Runtime code  =====================


const GetVersion = 1


address stor0;
uint256 stor0;
address sub_af6fb46fAddress;
address stor2;

function sub_af6fb46f(?) payable {
    return sub_af6fb46fAddress
}

function _fallback() payable {
  stop
}

function sub_65386a7c(?) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_797fdd7b(?) payable {
    if msg.sender == stor2:
        if eth.balance(this.address) >= 10^17:
            call address(stor0).0x797fdd7b with:
               value 10^17 wei
                 gas gas_remaining - 34050 wei
                args address(arg1), arg2
            require ext_call.success
}

function sub_fd4e6432(?) payable {
    if msg.sender == stor2:
        call Mask(160, 96, arg2) >> 96 with:
           value arg1 wei
             gas 0 wei
    else:
        signer = erecover(sha3(Mask(160, 96, arg2) >> 96), arg3 << 248, arg4, arg5) 
        require erecover.result
        if sub_af6fb46fAddress == address(signer):
            call Mask(160, 96, arg2) >> 96 with:
               value arg1 wei
                 gas 0 wei
}



}
