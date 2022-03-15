contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 477]




// =====================  Runtime code  =====================


uint64 sub_ff7ccfe0;
uint256 stor0;

function sub_ff7ccfe0(?) payable {
    return uint64(sub_ff7ccfe0)
}

function _fallback() payable {
  stop
}

function touch() payable {
    if block.number > 500000:
        call 0x227ca79e7b445f12032e295a64afe0451269bcc3 with:
           value eth.balance(this.address) wei
             gas 0 wei
    if block.number < 500000:
        if uint64(uint64(sub_ff7ccfe0) + 3000) < block.number:
            if eth.balance(this.address) >= 10 * 10^18:
                call 0xc2ac6849aec3938fb8c9b36f1c07be76f766637e with:
                   value 10 * 10^18 wei
                     gas gas_remaining - 34050 wei
                if ext_call.success:
                    uint256(stor0) = block.number or Mask(192, 64, uint256(stor0))
}



}
