contract main {


// =======================  Init code  ======================


uint8 stor0;
array of address stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0 = 0
    mem[96] = 0x7e07ef3eea322b07a9b0b60897a8912314ee7ebc
    mem[128] = 0xd391f6952f8edbc03ca1b6db9b94acb958d81548
    mem[160] = 0xbdc058e69ad60873787e67fe22ef40e6a82032e6
    stor1.length = 3
    s = 0
    idx = 96
    while 192 > idx:
        stor1[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor1.length > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor2[0x7e07ef3eea322b07a9b0b60897a8912314ee7ebc] = 10131336405529800
    stor2[0xd391f6952f8edbc03ca1b6db9b94acb958d81548] = 10145161290322600
    stor2[0xbdc058e69ad60873787e67fe22ef40e6a82032e6] = 10152073732718800
    return code.data[788 len 1594]
}



// =====================  Runtime code  =====================


const name = 'Test'

const symbol = 'Test'


uint8 stor0;
array of address members;
mapping of uint256 stor2;
mapping of uint8 stor3;

function members(uint256 arg1) {
    require arg1 < members.length
    return members[arg1]
}

function sent() {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function fundtransfer() {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function testSendEth(uint256 arg1) payable {
    require not stor0
    require arg1 > 0
    idx = 0
    while idx < arg1:
        require idx < members.length
        require idx < members.length
        if not stor3[stor1[idx]]:
            call members[idx] with:
               value stor2[stor1[idx]] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        mem[0] = members[idx]
        mem[32] = 3
        stor3[stor1[idx]] = 1
        idx = idx + 1
        continue 
    stor0 = 1
    return 1
}



}
