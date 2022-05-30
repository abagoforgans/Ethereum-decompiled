contract main {




// =====================  Runtime code  =====================


const admAddress = 0xaf9c025ce6322a23ac00301c714f4f42895c9818

const advAddress = 0x44503314c43422764582502e59a6b2905f999d04


mapping of uint256 userDepositedWei;
mapping of uint256 userWithdrewWei;
mapping of uint256 userReferralsWei;
mapping of uint256 stor3;
uint256 totalDepositedWei;
uint256 totalWithdrewWei;

function totalWithdrewWei() {
    return totalWithdrewWei
}

function userDepositedWei(address arg1) {
    return userDepositedWei[address(arg1)]
}

function totalDepositedWei() {
    return totalDepositedWei
}

function userReferralsWei(address arg1) {
    return userReferralsWei[address(arg1)]
}

function userWithdrewWei(address arg1) {
    return userWithdrewWei[address(arg1)]
}

function userDividendsWei(address arg1) {
    if not userDepositedWei[address(arg1)]:
        return 0
    require 9 * userDepositedWei[address(arg1)] / userDepositedWei[address(arg1)] == 9
    if not 9 * userDepositedWei[address(arg1)] / 100:
        return 0
    require (block.number * 9 * userDepositedWei[address(arg1)] / 100) - (stor3[address(arg1)] * 9 * userDepositedWei[address(arg1)] / 100) / 9 * userDepositedWei[address(arg1)] / 100 == block.number - stor3[address(arg1)]
    return ((block.number * 9 * userDepositedWei[address(arg1)] / 100) - (stor3[address(arg1)] * 9 * userDepositedWei[address(arg1)] / 100) / 5900)
}

function _fallback() payable {
    if not msg.value:
        if not msg.value:
            call 0x44503314c43422764582502e59a6b2905f999d04 with:
                 gas 2300 wei
        else:
            require 10 * msg.value / msg.value == 10
            call 0x44503314c43422764582502e59a6b2905f999d04 with:
               value 10 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call 0xaf9c025ce6322a23ac00301c714f4f42895c9818 with:
             gas 2300 wei
        if userDepositedWei[msg.sender]:
            if not userDepositedWei[msg.sender]:
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require totalWithdrewWei >= totalWithdrewWei
            else:
                require 4 * userDepositedWei[msg.sender] / userDepositedWei[msg.sender] == 4
                if not 4 * userDepositedWei[msg.sender] / 100:
                    call msg.sender with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require totalWithdrewWei >= totalWithdrewWei
                else:
                    require (block.number * 4 * userDepositedWei[msg.sender] / 100) - (stor3[msg.sender] * 4 * userDepositedWei[msg.sender] / 100) / 4 * userDepositedWei[msg.sender] / 100 == block.number - stor3[msg.sender]
                    call msg.sender with:
                       value (block.number * 4 * userDepositedWei[msg.sender] / 100) - (stor3[msg.sender] * 4 * userDepositedWei[msg.sender] / 100) / 5900 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    userWithdrewWei[msg.sender] += (block.number * 4 * userDepositedWei[msg.sender] / 100) - (stor3[msg.sender] * 4 * userDepositedWei[msg.sender] / 100) / 5900
                    require ((block.number * 4 * userDepositedWei[msg.sender] / 100) - (stor3[msg.sender] * 4 * userDepositedWei[msg.sender] / 100) / 5900) + totalWithdrewWei >= totalWithdrewWei
                    totalWithdrewWei += (block.number * 4 * userDepositedWei[msg.sender] / 100) - (stor3[msg.sender] * 4 * userDepositedWei[msg.sender] / 100) / 5900
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[128 len 20] > 0:
            if mem[128 len 20] != msg.sender:
                call mem[128 len 20] with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require 5 * msg.value / msg.value == 5
        if not msg.value:
            call 0x44503314c43422764582502e59a6b2905f999d04 with:
                 gas 2300 wei
        else:
            require 10 * msg.value / msg.value == 10
            call 0x44503314c43422764582502e59a6b2905f999d04 with:
               value 10 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call 0xaf9c025ce6322a23ac00301c714f4f42895c9818 with:
           value 5 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        if userDepositedWei[msg.sender]:
            if not userDepositedWei[msg.sender]:
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require totalWithdrewWei >= totalWithdrewWei
            else:
                require 4 * userDepositedWei[msg.sender] / userDepositedWei[msg.sender] == 4
                if not 4 * userDepositedWei[msg.sender] / 100:
                    call msg.sender with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require totalWithdrewWei >= totalWithdrewWei
                else:
                    require (block.number * 4 * userDepositedWei[msg.sender] / 100) - (stor3[msg.sender] * 4 * userDepositedWei[msg.sender] / 100) / 4 * userDepositedWei[msg.sender] / 100 == block.number - stor3[msg.sender]
                    call msg.sender with:
                       value (block.number * 4 * userDepositedWei[msg.sender] / 100) - (stor3[msg.sender] * 4 * userDepositedWei[msg.sender] / 100) / 5900 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    userWithdrewWei[msg.sender] += (block.number * 4 * userDepositedWei[msg.sender] / 100) - (stor3[msg.sender] * 4 * userDepositedWei[msg.sender] / 100) / 5900
                    require ((block.number * 4 * userDepositedWei[msg.sender] / 100) - (stor3[msg.sender] * 4 * userDepositedWei[msg.sender] / 100) / 5900) + totalWithdrewWei >= totalWithdrewWei
                    totalWithdrewWei += (block.number * 4 * userDepositedWei[msg.sender] / 100) - (stor3[msg.sender] * 4 * userDepositedWei[msg.sender] / 100) / 5900
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[128 len 20] > 0:
            if mem[128 len 20] != msg.sender:
                call mem[128 len 20] with:
                   value 5 * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                userReferralsWei[mem[128 len 20]] += 5 * msg.value / 100
    stor3[msg.sender] = block.number
    userDepositedWei[msg.sender] += msg.value
    require msg.value + totalDepositedWei >= totalDepositedWei
    totalDepositedWei += msg.value
}



}
