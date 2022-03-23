contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 50
    stor5 = 5
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[60 len 2169]
}



// =====================  Runtime code  =====================


const getBalance = (eth.balance(this.address) / 10^15)


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor4;
uint256 sub_f33816d1;
array of struct stor6;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986692;

function totalInvestors() payable {
    return stor6.length
}

function sub_f33816d1(?) payable {
    return sub_f33816d1
}

function sub_e7417a5e(?) payable {
    sub_f33816d1 = arg1
}

function sub_4a1d3e31(?) payable {
    return (stor2 / 10^15)
}

function max(uint256 arg1, uint256 arg2) payable {
    if arg1 <= arg2:
        return arg2
    return arg1
}

function min(uint256 arg1, uint256 arg2) payable {
    if arg1 >= arg2:
        return arg2
    return arg1
}

function refund() payable {
    if msg.sender == stor0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function getInvestorInfo(uint256 arg1) payable {
    if arg1 > stor6.length:
        return 0
    require arg1 < stor6.length
    return address(stor6[arg1].field_0), 
           stor6[arg1].field_256 / 10^15,
           stor6[arg1].field_512 / 10^15,
           stor6[arg1].field_768 / 10^15,
           stor6[arg1].field_1024 / 10^15,
           storF652[arg1]
}

function invest(uint256 arg1) payable {
    require msg.value >= 10^18
    stor1 += msg.value
    stor2 += (100 * msg.value) + (stor4 * msg.value) / 100
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = (6 * stor6.length) + 6
        while 6 * stor6.length > idx:
            address(stor6[idx].field_0) = 0
            stor6[idx].field_256 = 0
            stor6[idx].field_512 = 0
            stor6[idx].field_768 = 0
            stor6[idx].field_1024 = 0
            stor6[idx].field_1280 = 0
            idx = idx + 6
            continue 
    stor6[stor6.length].field_0 = msg.sender or Mask(96, 160, stor6[stor6.length].field_0)
    stor6[stor6.length].field_256 = msg.value
    stor6[stor6.length].field_512 = (100 * msg.value) + (stor4 * msg.value) / 100
    stor6[stor6.length].field_768 = 0
    stor6[stor6.length].field_1024 = (100 * msg.value) + (stor4 * msg.value) / 100
    stor6[stor6.length].field_1280 = arg1
}

function _fallback() payable {
    require msg.value >= 10^18
    stor1 += msg.value
    stor2 += (100 * msg.value) + (stor4 * msg.value) / 100
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = (6 * stor6.length) + 6
        while 6 * stor6.length > idx:
            address(stor6[idx].field_0) = 0
            stor6[idx].field_256 = 0
            stor6[idx].field_512 = 0
            stor6[idx].field_768 = 0
            stor6[idx].field_1024 = 0
            stor6[idx].field_1280 = 0
            idx = idx + 6
            continue 
    stor6[stor6.length].field_0 = msg.sender or Mask(96, 160, stor6[stor6.length].field_0)
    stor6[stor6.length].field_256 = msg.value
    stor6[stor6.length].field_512 = (100 * msg.value) + (stor4 * msg.value) / 100
    stor6[stor6.length].field_768 = 0
    stor6[stor6.length].field_1024 = (100 * msg.value) + (stor4 * msg.value) / 100
    stor6[stor6.length].field_1280 = block.timestamp
}

function sub_a276407a(?) payable {
    if stor0 == msg.sender:
        idx = 0
        while idx < stor6.length:
            mem[0] = 6
            if stor[code.data[2137 len 32] + (6 * idx)] > 0:
                require idx < stor6.length
                mem[0] = 6
            idx = idx + 1
            continue 
        if eth.balance(this.address) >= 0:
            idx = 0
            while idx < stor6.length:
                mem[0] = 6
                if stor[code.data[2137 len 32] + (6 * idx)] > 0:
                    require idx < stor6.length
                    require idx < stor6.length
                    if sub_f33816d1 * storF652[idx] / 100 < stor[code.data[2137 len 32] + (6 * idx)]:
                        call address(stor6[idx].field_0) with:
                           value sub_f33816d1 * storF652[idx] / 100 wei
                             gas 0 wei
                        storF652[idx] += sub_f33816d1 * storF652[idx] / 100
                        mem[0] = 6
                        stor[code.data[2137 len 32] + (6 * idx)] -= sub_f33816d1 * storF652[idx] / 100
                        stor2 -= sub_f33816d1 * storF652[idx] / 100
                    else:
                        call address(stor6[idx].field_0) with:
                           value stor[code.data[2137 len 32] + (6 * idx)] wei
                             gas 0 wei
                        storF652[idx] += stor[code.data[2137 len 32] + (6 * idx)]
                        stor[code.data[2137 len 32] + (6 * idx)] = 0
                        stor2 -= stor[code.data[2137 len 32] + (6 * idx)]
                        mem[0] = 6
                idx = idx + 1
                continue 
        return 0
    else:
        return 0
}



}
