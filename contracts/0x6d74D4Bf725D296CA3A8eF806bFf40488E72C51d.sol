contract main {




// =====================  Runtime code  =====================


const admAddress = 0x5df65e16d6ec1a8090ffa11c8185ad372a8786cd

const advAddress = 0x670b45f2a8722bf0c01927cf4480fe17d8643faa


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
    require userDepositedWei[address(arg1)]
    require 4 * userDepositedWei[address(arg1)] / userDepositedWei[address(arg1)] == 4
    if not 4 * userDepositedWei[address(arg1)] / 100:
        return 0
    require 4 * userDepositedWei[address(arg1)] / 100
    require (block.number * 4 * userDepositedWei[address(arg1)] / 100) - (stor3[address(arg1)] * 4 * userDepositedWei[address(arg1)] / 100) / 4 * userDepositedWei[address(arg1)] / 100 == block.number - stor3[address(arg1)]
    return ((block.number * 4 * userDepositedWei[address(arg1)] / 100) - (stor3[address(arg1)] * 4 * userDepositedWei[address(arg1)] / 100) / 5900)
}

function _fallback() payable {
    if not msg.value:
        if not msg.value:
            call 0x670b45f2a8722bf0c01927cf4480fe17d8643faa with:
                 gas 2300 wei
        else:
            require msg.value
            require 10 * msg.value / msg.value == 10
            call 0x670b45f2a8722bf0c01927cf4480fe17d8643faa with:
               value 10 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call 0x5df65e16d6ec1a8090ffa11c8185ad372a8786cd with:
             gas 2300 wei
        if userDepositedWei[address(msg.sender)]:
            if not userDepositedWei[address(msg.sender)]:
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require totalWithdrewWei >= totalWithdrewWei
            else:
                require userDepositedWei[address(msg.sender)]
                require 4 * userDepositedWei[address(msg.sender)] / userDepositedWei[address(msg.sender)] == 4
                if not 4 * userDepositedWei[address(msg.sender)] / 100:
                    call msg.sender with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require totalWithdrewWei >= totalWithdrewWei
                else:
                    require 4 * userDepositedWei[address(msg.sender)] / 100
                    require (block.number * 4 * userDepositedWei[address(msg.sender)] / 100) - (stor3[address(msg.sender)] * 4 * userDepositedWei[address(msg.sender)] / 100) / 4 * userDepositedWei[address(msg.sender)] / 100 == block.number - stor3[address(msg.sender)]
                    call msg.sender with:
                       value (block.number * 4 * userDepositedWei[address(msg.sender)] / 100) - (stor3[address(msg.sender)] * 4 * userDepositedWei[address(msg.sender)] / 100) / 5900 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    userWithdrewWei[address(msg.sender)] += (block.number * 4 * userDepositedWei[address(msg.sender)] / 100) - (stor3[address(msg.sender)] * 4 * userDepositedWei[address(msg.sender)] / 100) / 5900
                    require totalWithdrewWei + ((block.number * 4 * userDepositedWei[address(msg.sender)] / 100) - (stor3[address(msg.sender)] * 4 * userDepositedWei[address(msg.sender)] / 100) / 5900) >= totalWithdrewWei
                    totalWithdrewWei += (block.number * 4 * userDepositedWei[address(msg.sender)] / 100) - (stor3[address(msg.sender)] * 4 * userDepositedWei[address(msg.sender)] / 100) / 5900
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[128 len 20] > 0:
            if mem[128 len 20] != msg.sender:
                call mem[128 len 20] with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require msg.value
        require 5 * msg.value / msg.value == 5
        if not msg.value:
            call 0x670b45f2a8722bf0c01927cf4480fe17d8643faa with:
                 gas 2300 wei
        else:
            require msg.value
            require 10 * msg.value / msg.value == 10
            call 0x670b45f2a8722bf0c01927cf4480fe17d8643faa with:
               value 10 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call 0x5df65e16d6ec1a8090ffa11c8185ad372a8786cd with:
           value 5 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        if userDepositedWei[address(msg.sender)]:
            if not userDepositedWei[address(msg.sender)]:
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require totalWithdrewWei >= totalWithdrewWei
            else:
                require userDepositedWei[address(msg.sender)]
                require 4 * userDepositedWei[address(msg.sender)] / userDepositedWei[address(msg.sender)] == 4
                if not 4 * userDepositedWei[address(msg.sender)] / 100:
                    call msg.sender with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require totalWithdrewWei >= totalWithdrewWei
                else:
                    require 4 * userDepositedWei[address(msg.sender)] / 100
                    require (block.number * 4 * userDepositedWei[address(msg.sender)] / 100) - (stor3[address(msg.sender)] * 4 * userDepositedWei[address(msg.sender)] / 100) / 4 * userDepositedWei[address(msg.sender)] / 100 == block.number - stor3[address(msg.sender)]
                    call msg.sender with:
                       value (block.number * 4 * userDepositedWei[address(msg.sender)] / 100) - (stor3[address(msg.sender)] * 4 * userDepositedWei[address(msg.sender)] / 100) / 5900 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    userWithdrewWei[address(msg.sender)] += (block.number * 4 * userDepositedWei[address(msg.sender)] / 100) - (stor3[address(msg.sender)] * 4 * userDepositedWei[address(msg.sender)] / 100) / 5900
                    require totalWithdrewWei + ((block.number * 4 * userDepositedWei[address(msg.sender)] / 100) - (stor3[address(msg.sender)] * 4 * userDepositedWei[address(msg.sender)] / 100) / 5900) >= totalWithdrewWei
                    totalWithdrewWei += (block.number * 4 * userDepositedWei[address(msg.sender)] / 100) - (stor3[address(msg.sender)] * 4 * userDepositedWei[address(msg.sender)] / 100) / 5900
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[128 len 20] > 0:
            if mem[128 len 20] != msg.sender:
                call mem[128 len 20] with:
                   value 5 * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                userReferralsWei[mem[128 len 20]] += 5 * msg.value / 100
    stor3[address(msg.sender)] = block.number
    userDepositedWei[address(msg.sender)] += msg.value
    require totalDepositedWei + msg.value >= totalDepositedWei
    totalDepositedWei += msg.value
}



}
