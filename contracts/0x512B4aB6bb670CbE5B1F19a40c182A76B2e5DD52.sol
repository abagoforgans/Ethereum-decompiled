contract main {


// =======================  Init code  ======================


uint256 stor4; offset 8
address stor5;

function _fallback() payable {
    stor5 = 0x233820087a752349ee20daab1c18e0b7c546d3f6
    stor4 = Mask(248, 0, msg.sender)
    return code.data[81 len 545]
}



// =====================  Runtime code  =====================


uint256 sub_a59ee275;
uint256 sub_4b7e2dc0;
uint256 sub_7e0838cb;
uint256 sub_609c2040;
uint8 result;
address stor4; offset 8
address stor5;

function sub_4b7e2dc0(?) payable {
    return sub_4b7e2dc0
}

function sub_609c2040(?) payable {
    return sub_609c2040
}

function result() payable {
    return result
}

function sub_7e0838cb(?) payable {
    return sub_7e0838cb
}

function sub_a59ee275(?) payable {
    return sub_a59ee275
}

function _fallback() payable {
  stop
}

function sub_bc166251(?) payable {
    sub_7e0838cb = arg1
}

function cashOut() payable {
    call stor4 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function sub_6cad3c91(?) payable {
    if eth.balance(this.address) >= 10^15:
        sub_a59ee275 = block.number
        sub_7e0838cb = (block.number * block.difficulty * block.timestamp) + (sub_7e0838cb % block.timestamp) + block.hash(block.number - 1) + 1 % 0x36ce80b791850e292b0f092bb007da906561520482
        sub_609c2040 = 10010
        sub_4b7e2dc0 = (block.number * block.difficulty * block.timestamp) + (sub_7e0838cb % block.timestamp) + block.hash(block.number - 1) + 1 % 0x36ce80b791850e292b0f092bb007da906561520482 % 10010
        if (block.number * block.difficulty * block.timestamp) + (sub_7e0838cb % block.timestamp) + block.hash(block.number - 1) + 1 % 0x36ce80b791850e292b0f092bb007da906561520482 % 10010 != 0:
            result = 0
        else:
            result = 1
}

function sub_f5632bf1(?) payable {
    if eth.balance(this.address) >= 10^15:
        sub_a59ee275 = block.number
        sub_7e0838cb = (block.number * block.difficulty * block.timestamp) + (sub_7e0838cb % block.timestamp) + block.hash(block.number - 1) + 1 % 0x36ce80b791850e292b0f092bb007da906561520482
        sub_609c2040 = (10 * 10^18 / msg.value) + 10
        sub_4b7e2dc0 = (block.number * block.difficulty * block.timestamp) + (sub_7e0838cb % block.timestamp) + block.hash(block.number - 1) + 1 % 0x36ce80b791850e292b0f092bb007da906561520482 % (10 * 10^18 / msg.value) + 10
        if 0 == (block.number * block.difficulty * block.timestamp) + (sub_7e0838cb % block.timestamp) + block.hash(block.number - 1) + 1 % 0x36ce80b791850e292b0f092bb007da906561520482 % (10 * 10^18 / msg.value) + 10:
            call stor5 with:
               value 10^15 wei
                 gas gas_remaining - 34050 wei
}



}
