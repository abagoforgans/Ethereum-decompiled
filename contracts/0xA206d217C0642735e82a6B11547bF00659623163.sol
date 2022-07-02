contract main {




// =====================  Runtime code  =====================


mapping of struct myDeposit;
uint256 totalDeposit;
address sub_8a68cf9cAddress;
address stor3;

function myDeposit() {
    return myDeposit[address(msg.sender)].field_0
}

function sub_8a68cf9c(?) {
    return sub_8a68cf9cAddress
}

function totalDeposit() {
    return totalDeposit
}

function _fallback() payable {
  stop
}

function setTokenContract(address arg1) {
    require stor3 == msg.sender
    sub_8a68cf9cAddress = arg1
}

function reinvestEther() {
    if eth.balance(this.address) > 0:
        call sub_8a68cf9cAddress with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        require ext_call.success
}

function totalSupply() {
    require ext_code.size(sub_8a68cf9cAddress)
    call sub_8a68cf9cAddress.myTokens() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function myDividends(bool arg1) {
    require ext_code.size(sub_8a68cf9cAddress)
    call sub_8a68cf9cAddress.0x688abbf7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f268e24b(?) {
    require ext_code.size(sub_8a68cf9cAddress)
    call sub_8a68cf9cAddress.myTokens() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalDeposit <= 0:
        return 1000
    require 1000 * ext_call.return_data[0] / 1000 == ext_call.return_data[0]
    require totalDeposit
    return ((1000 * ext_call.return_data[0] / totalDeposit) - 1000)
}

function reinvestDividends() {
    require ext_code.size(sub_8a68cf9cAddress)
    call sub_8a68cf9cAddress.0x688abbf7 with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_8a68cf9cAddress)
        call sub_8a68cf9cAddress.reinvest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function myProfit(address arg1) {
    if not myDeposit[address(arg1)].field_512:
        if myDeposit[address(arg1)].field_256 >= 0:
            return myDeposit[address(arg1)].field_256
    else:
        if not myDeposit[address(arg1)].field_0:
            if myDeposit[address(arg1)].field_256 >= 0:
                return myDeposit[address(arg1)].field_256
        else:
            if not block.timestamp - myDeposit[address(arg1)].field_512:
                if myDeposit[address(arg1)].field_256 >= 0:
                    return myDeposit[address(arg1)].field_256
            else:
                if block.timestamp - myDeposit[address(arg1)].field_512:
                    if (block.timestamp * myDeposit[address(arg1)].field_0) - (myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0) / block.timestamp - myDeposit[address(arg1)].field_512 == myDeposit[address(arg1)].field_0:
                        if not (block.timestamp * myDeposit[address(arg1)].field_0) - (myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0):
                            if myDeposit[address(arg1)].field_256 >= 0:
                                return myDeposit[address(arg1)].field_256
                        else:
                            if (block.timestamp * myDeposit[address(arg1)].field_0) - (myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0):
                                if (1000 * block.timestamp * myDeposit[address(arg1)].field_0) - (1000 * myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0) / (block.timestamp * myDeposit[address(arg1)].field_0) - (myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0) == 1000:
                                    if ((1000 * block.timestamp * myDeposit[address(arg1)].field_0) - (1000 * myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0) / 100000 / 24 * 3600) + myDeposit[address(arg1)].field_256 >= (1000 * block.timestamp * myDeposit[address(arg1)].field_0) - (1000 * myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0) / 100000 / 24 * 3600:
                                        return (((1000 * block.timestamp * myDeposit[address(arg1)].field_0) - (1000 * myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0) / 100000 / 24 * 3600) + myDeposit[address(arg1)].field_256)
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender == sub_8a68cf9cAddress
    if not myDeposit[address(arg1)].field_512:
        require myDeposit[address(arg1)].field_256 >= 0
    else:
        if not myDeposit[address(arg1)].field_0:
            require myDeposit[address(arg1)].field_256 >= 0
        else:
            if not block.timestamp - myDeposit[address(arg1)].field_512:
                require myDeposit[address(arg1)].field_256 >= 0
            else:
                require block.timestamp - myDeposit[address(arg1)].field_512
                require (block.timestamp * myDeposit[address(arg1)].field_0) - (myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0) / block.timestamp - myDeposit[address(arg1)].field_512 == myDeposit[address(arg1)].field_0
                if not (block.timestamp * myDeposit[address(arg1)].field_0) - (myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0):
                    require myDeposit[address(arg1)].field_256 >= 0
                else:
                    require (block.timestamp * myDeposit[address(arg1)].field_0) - (myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0)
                    require (1000 * block.timestamp * myDeposit[address(arg1)].field_0) - (1000 * myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0) / (block.timestamp * myDeposit[address(arg1)].field_0) - (myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0) == 1000
                    require ((1000 * block.timestamp * myDeposit[address(arg1)].field_0) - (1000 * myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0) / 100000 / 24 * 3600) + myDeposit[address(arg1)].field_256 >= (1000 * block.timestamp * myDeposit[address(arg1)].field_0) - (1000 * myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0) / 100000 / 24 * 3600
                    myDeposit[address(arg1)].field_256 += (1000 * block.timestamp * myDeposit[address(arg1)].field_0) - (1000 * myDeposit[address(arg1)].field_512 * myDeposit[address(arg1)].field_0) / 100000 / 24 * 3600
    myDeposit[address(arg1)].field_512 = block.timestamp
    require myDeposit[address(arg1)].field_0 + arg2 >= myDeposit[address(arg1)].field_0
    myDeposit[address(arg1)].field_0 += arg2
    require totalDeposit + arg2 >= totalDeposit
    totalDeposit += arg2
    emit onDeposit(arg2, arg1);
    return 1
}

function withdrawCapital() {
    require myDeposit[address(msg.sender)].field_0 > 0
    if not myDeposit[address(msg.sender)].field_0:
        if not myDeposit[address(msg.sender)].field_512:
            require myDeposit[address(msg.sender)].field_256 >= 0
            myDeposit[address(msg.sender)].field_0 = 0
        else:
            if not myDeposit[address(msg.sender)].field_0:
                require myDeposit[address(msg.sender)].field_256 >= 0
                myDeposit[address(msg.sender)].field_0 = 0
            else:
                if not block.timestamp - myDeposit[address(msg.sender)].field_512:
                    require myDeposit[address(msg.sender)].field_256 >= 0
                    myDeposit[address(msg.sender)].field_0 = 0
                else:
                    require block.timestamp - myDeposit[address(msg.sender)].field_512
                    require (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / block.timestamp - myDeposit[address(msg.sender)].field_512 == myDeposit[address(msg.sender)].field_0
                    if not (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0):
                        require myDeposit[address(msg.sender)].field_256 >= 0
                        myDeposit[address(msg.sender)].field_0 = 0
                    else:
                        require (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0)
                        require (1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) == 1000
                        require ((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256 >= (1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600
                        myDeposit[address(msg.sender)].field_0 = 0
                        myDeposit[address(msg.sender)].field_256 += (1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600
        require myDeposit[address(msg.sender)].field_0 <= totalDeposit
        totalDeposit -= myDeposit[address(msg.sender)].field_0
        require ext_code.size(sub_8a68cf9cAddress)
        call sub_8a68cf9cAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xa6e66a95: 0, msg.sender
    else:
        require myDeposit[address(msg.sender)].field_0
        require 90 * myDeposit[address(msg.sender)].field_0 / myDeposit[address(msg.sender)].field_0 == 90
        if not myDeposit[address(msg.sender)].field_512:
            require myDeposit[address(msg.sender)].field_256 >= 0
            myDeposit[address(msg.sender)].field_0 = 0
        else:
            if not myDeposit[address(msg.sender)].field_0:
                require myDeposit[address(msg.sender)].field_256 >= 0
                myDeposit[address(msg.sender)].field_0 = 0
            else:
                if not block.timestamp - myDeposit[address(msg.sender)].field_512:
                    require myDeposit[address(msg.sender)].field_256 >= 0
                    myDeposit[address(msg.sender)].field_0 = 0
                else:
                    require block.timestamp - myDeposit[address(msg.sender)].field_512
                    require (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / block.timestamp - myDeposit[address(msg.sender)].field_512 == myDeposit[address(msg.sender)].field_0
                    if not (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0):
                        require myDeposit[address(msg.sender)].field_256 >= 0
                        myDeposit[address(msg.sender)].field_0 = 0
                    else:
                        require (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0)
                        require (1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) == 1000
                        require ((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256 >= (1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600
                        myDeposit[address(msg.sender)].field_0 = 0
                        myDeposit[address(msg.sender)].field_256 += (1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600
        require myDeposit[address(msg.sender)].field_0 <= totalDeposit
        totalDeposit -= myDeposit[address(msg.sender)].field_0
        require ext_code.size(sub_8a68cf9cAddress)
        call sub_8a68cf9cAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 90 * myDeposit[address(msg.sender)].field_0 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xa6e66a95: (90 * myDeposit[address(msg.sender)].field_0 / 100), msg.sender
}

function withdrawProfit() {
    if not myDeposit[address(msg.sender)].field_512:
        require myDeposit[address(msg.sender)].field_256 >= 0
        require myDeposit[address(msg.sender)].field_256 > 0
    else:
        if not myDeposit[address(msg.sender)].field_0:
            require myDeposit[address(msg.sender)].field_256 >= 0
            require myDeposit[address(msg.sender)].field_256 > 0
        else:
            if not block.timestamp - myDeposit[address(msg.sender)].field_512:
                require myDeposit[address(msg.sender)].field_256 >= 0
                require myDeposit[address(msg.sender)].field_256 > 0
            else:
                require block.timestamp - myDeposit[address(msg.sender)].field_512
                require (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / block.timestamp - myDeposit[address(msg.sender)].field_512 == myDeposit[address(msg.sender)].field_0
                if not (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0):
                    require myDeposit[address(msg.sender)].field_256 >= 0
                    require myDeposit[address(msg.sender)].field_256 > 0
                else:
                    require (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0)
                    require (1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) == 1000
                    require ((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256 >= (1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600
                    require ((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256 > 0
    if not myDeposit[address(msg.sender)].field_512:
        require myDeposit[address(msg.sender)].field_256 >= 0
        myDeposit[address(msg.sender)].field_256 = 0
        myDeposit[address(msg.sender)].field_512 = block.timestamp
        require ext_code.size(sub_8a68cf9cAddress)
        call sub_8a68cf9cAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, myDeposit[address(msg.sender)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xce669b3f: myDeposit[address(msg.sender)].field_256, msg.sender
    else:
        if not myDeposit[address(msg.sender)].field_0:
            require myDeposit[address(msg.sender)].field_256 >= 0
            myDeposit[address(msg.sender)].field_256 = 0
            myDeposit[address(msg.sender)].field_512 = block.timestamp
            require ext_code.size(sub_8a68cf9cAddress)
            call sub_8a68cf9cAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, myDeposit[address(msg.sender)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xce669b3f: myDeposit[address(msg.sender)].field_256, msg.sender
        else:
            if not block.timestamp - myDeposit[address(msg.sender)].field_512:
                require myDeposit[address(msg.sender)].field_256 >= 0
                myDeposit[address(msg.sender)].field_256 = 0
                myDeposit[address(msg.sender)].field_512 = block.timestamp
                require ext_code.size(sub_8a68cf9cAddress)
                call sub_8a68cf9cAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, myDeposit[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0xce669b3f: myDeposit[address(msg.sender)].field_256, msg.sender
            else:
                require block.timestamp - myDeposit[address(msg.sender)].field_512
                require (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / block.timestamp - myDeposit[address(msg.sender)].field_512 == myDeposit[address(msg.sender)].field_0
                if not (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0):
                    require myDeposit[address(msg.sender)].field_256 >= 0
                    myDeposit[address(msg.sender)].field_256 = 0
                    myDeposit[address(msg.sender)].field_512 = block.timestamp
                    require ext_code.size(sub_8a68cf9cAddress)
                    call sub_8a68cf9cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, myDeposit[address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0xce669b3f: myDeposit[address(msg.sender)].field_256, msg.sender
                else:
                    require (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0)
                    require (1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) == 1000
                    require ((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256 >= (1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600
                    myDeposit[address(msg.sender)].field_256 = 0
                    myDeposit[address(msg.sender)].field_512 = block.timestamp
                    require ext_code.size(sub_8a68cf9cAddress)
                    call sub_8a68cf9cAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0xce669b3f: (((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256), msg.sender
}

function reinvestProfit() {
    if not myDeposit[address(msg.sender)].field_512:
        require myDeposit[address(msg.sender)].field_256 >= 0
        require myDeposit[address(msg.sender)].field_256 > 0
    else:
        if not myDeposit[address(msg.sender)].field_0:
            require myDeposit[address(msg.sender)].field_256 >= 0
            require myDeposit[address(msg.sender)].field_256 > 0
        else:
            if not block.timestamp - myDeposit[address(msg.sender)].field_512:
                require myDeposit[address(msg.sender)].field_256 >= 0
                require myDeposit[address(msg.sender)].field_256 > 0
            else:
                require block.timestamp - myDeposit[address(msg.sender)].field_512
                require (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / block.timestamp - myDeposit[address(msg.sender)].field_512 == myDeposit[address(msg.sender)].field_0
                if not (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0):
                    require myDeposit[address(msg.sender)].field_256 >= 0
                    require myDeposit[address(msg.sender)].field_256 > 0
                else:
                    require (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0)
                    require (1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) == 1000
                    require ((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256 >= (1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600
                    require ((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256 > 0
    if not myDeposit[address(msg.sender)].field_512:
        require myDeposit[address(msg.sender)].field_256 >= 0
        require myDeposit[address(msg.sender)].field_0 + myDeposit[address(msg.sender)].field_256 >= myDeposit[address(msg.sender)].field_0
        myDeposit[address(msg.sender)].field_0 += myDeposit[address(msg.sender)].field_256
        myDeposit[address(msg.sender)].field_256 = 0
        myDeposit[address(msg.sender)].field_512 = block.timestamp
        require totalDeposit + myDeposit[address(msg.sender)].field_256 >= totalDeposit
        totalDeposit += myDeposit[address(msg.sender)].field_256
        emit 0x28c3c331: myDeposit[address(msg.sender)].field_256, msg.sender
    else:
        if not myDeposit[address(msg.sender)].field_0:
            require myDeposit[address(msg.sender)].field_256 >= 0
            require myDeposit[address(msg.sender)].field_0 + myDeposit[address(msg.sender)].field_256 >= myDeposit[address(msg.sender)].field_0
            myDeposit[address(msg.sender)].field_0 += myDeposit[address(msg.sender)].field_256
            myDeposit[address(msg.sender)].field_256 = 0
            myDeposit[address(msg.sender)].field_512 = block.timestamp
            require totalDeposit + myDeposit[address(msg.sender)].field_256 >= totalDeposit
            totalDeposit += myDeposit[address(msg.sender)].field_256
            emit 0x28c3c331: myDeposit[address(msg.sender)].field_256, msg.sender
        else:
            if not block.timestamp - myDeposit[address(msg.sender)].field_512:
                require myDeposit[address(msg.sender)].field_256 >= 0
                require myDeposit[address(msg.sender)].field_0 + myDeposit[address(msg.sender)].field_256 >= myDeposit[address(msg.sender)].field_0
                myDeposit[address(msg.sender)].field_0 += myDeposit[address(msg.sender)].field_256
                myDeposit[address(msg.sender)].field_256 = 0
                myDeposit[address(msg.sender)].field_512 = block.timestamp
                require totalDeposit + myDeposit[address(msg.sender)].field_256 >= totalDeposit
                totalDeposit += myDeposit[address(msg.sender)].field_256
                emit 0x28c3c331: myDeposit[address(msg.sender)].field_256, msg.sender
            else:
                require block.timestamp - myDeposit[address(msg.sender)].field_512
                require (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / block.timestamp - myDeposit[address(msg.sender)].field_512 == myDeposit[address(msg.sender)].field_0
                if not (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0):
                    require myDeposit[address(msg.sender)].field_256 >= 0
                    require myDeposit[address(msg.sender)].field_0 + myDeposit[address(msg.sender)].field_256 >= myDeposit[address(msg.sender)].field_0
                    myDeposit[address(msg.sender)].field_0 += myDeposit[address(msg.sender)].field_256
                    myDeposit[address(msg.sender)].field_256 = 0
                    myDeposit[address(msg.sender)].field_512 = block.timestamp
                    require totalDeposit + myDeposit[address(msg.sender)].field_256 >= totalDeposit
                    totalDeposit += myDeposit[address(msg.sender)].field_256
                    emit 0x28c3c331: myDeposit[address(msg.sender)].field_256, msg.sender
                else:
                    require (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0)
                    require (1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / (block.timestamp * myDeposit[address(msg.sender)].field_0) - (myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) == 1000
                    require ((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256 >= (1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600
                    require myDeposit[address(msg.sender)].field_0 + ((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256 >= myDeposit[address(msg.sender)].field_0
                    myDeposit[address(msg.sender)].field_0 = myDeposit[address(msg.sender)].field_0 + ((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256
                    myDeposit[address(msg.sender)].field_256 = 0
                    myDeposit[address(msg.sender)].field_512 = block.timestamp
                    require totalDeposit + ((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256 >= totalDeposit
                    totalDeposit = totalDeposit + ((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256
                    emit 0x28c3c331: (((1000 * block.timestamp * myDeposit[address(msg.sender)].field_0) - (1000 * myDeposit[address(msg.sender)].field_512 * myDeposit[address(msg.sender)].field_0) / 100000 / 24 * 3600) + myDeposit[address(msg.sender)].field_256), msg.sender
}



}
