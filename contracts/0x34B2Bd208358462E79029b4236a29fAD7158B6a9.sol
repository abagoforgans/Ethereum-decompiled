contract main {




// =====================  Runtime code  =====================


const admAddress = 0x35f55ebe0caabaa7d0ed7e6f4dba414df76ec4c4


mapping of uint256 userDepositedWei;
mapping of uint256 userWithdrewWei;
mapping of uint256 stor2;
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

function userWithdrewWei(address arg1) {
    return userWithdrewWei[address(arg1)]
}

function releaseAdmPercent() {
    require 0x35f55ebe0caabaa7d0ed7e6f4dba414df76ec4c4 == msg.sender
    call 0x35f55ebe0caabaa7d0ed7e6f4dba414df76ec4c4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function userDividendsWei(address arg1) {
    if not userDepositedWei[address(arg1)]:
        return 0
    require 5 * userDepositedWei[address(arg1)] / userDepositedWei[address(arg1)] == 5
    if not 5 * userDepositedWei[address(arg1)] / 100:
        return 0
    require (block.number * 5 * userDepositedWei[address(arg1)] / 100) - (stor2[address(arg1)] * 5 * userDepositedWei[address(arg1)] / 100) / 5 * userDepositedWei[address(arg1)] / 100 == block.number - stor2[address(arg1)]
    return ((block.number * 5 * userDepositedWei[address(arg1)] / 100) - (stor2[address(arg1)] * 5 * userDepositedWei[address(arg1)] / 100) / 5900)
}

function _fallback() payable {
    if userDepositedWei[msg.sender]:
        if not userDepositedWei[msg.sender]:
            call msg.sender with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require totalWithdrewWei >= totalWithdrewWei
        else:
            require 5 * userDepositedWei[msg.sender] / userDepositedWei[msg.sender] == 5
            if not 5 * userDepositedWei[msg.sender] / 100:
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require totalWithdrewWei >= totalWithdrewWei
            else:
                require (block.number * 5 * userDepositedWei[msg.sender] / 100) - (stor2[msg.sender] * 5 * userDepositedWei[msg.sender] / 100) / 5 * userDepositedWei[msg.sender] / 100 == block.number - stor2[msg.sender]
                call msg.sender with:
                   value (block.number * 5 * userDepositedWei[msg.sender] / 100) - (stor2[msg.sender] * 5 * userDepositedWei[msg.sender] / 100) / 5900 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                userWithdrewWei[msg.sender] += (block.number * 5 * userDepositedWei[msg.sender] / 100) - (stor2[msg.sender] * 5 * userDepositedWei[msg.sender] / 100) / 5900
                require ((block.number * 5 * userDepositedWei[msg.sender] / 100) - (stor2[msg.sender] * 5 * userDepositedWei[msg.sender] / 100) / 5900) + totalWithdrewWei >= totalWithdrewWei
                totalWithdrewWei += (block.number * 5 * userDepositedWei[msg.sender] / 100) - (stor2[msg.sender] * 5 * userDepositedWei[msg.sender] / 100) / 5900
    stor2[msg.sender] = block.number
    userDepositedWei[msg.sender] += msg.value
    require msg.value + totalDepositedWei >= totalDepositedWei
    totalDepositedWei += msg.value
}



}
