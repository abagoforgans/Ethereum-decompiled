contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor2 = 420180 * 3600
    stor3 = 420012 * 3600
    stor4 = 0
    stor5 = 0
    stor6 = 10 * 10^18
    stor7 = 2000 * 10^18
    require not msg.value
    stor0 = msg.sender
    emit OwnershipTransferred(0, stor0);
    stor1 = 0x2add07c4d319a1211ed6362d8d0fbe5ef56b65f6
    return code.data[360 len 3020]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 START;
uint256 END;
uint256 stor4;
uint256 raisedAmount;
uint256 sub_3dd49fcf;
uint256 stor7;

function sub_3dd49fcf(?) {
    return sub_3dd49fcf
}

function owner() {
    return owner
}

function START() {
    return START
}

function raisedAmount() {
    return raisedAmount
}

function END() {
    return END
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function tokensAvailable() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function setDiscount(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == owner
    if arg1 > 0:
        START = arg1
    if arg2 > 0:
        require arg2 >= arg1
        END = arg2
    if arg3 > 0:
        stor4 = arg3
    if arg4 > 0:
        sub_3dd49fcf = 10^18 * arg4
    if arg5 > 0:
        stor7 = 10^18 * arg5
}

function isActive() {
    if block.timestamp < START:
        return block.timestamp >= START
    if block.timestamp > END:
        return block.timestamp <= END
    if raisedAmount >= stor7:
        if stor4 > 0:
            require stor4 >= 0
            if sub_3dd49fcf:
                require sub_3dd49fcf
                require sub_3dd49fcf * stor4 / sub_3dd49fcf == stor4
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            return ext_call.return_data[0] >= sub_3dd49fcf * stor4
        if START + (168 * 24 * 3600) > block.timestamp:
            if sub_3dd49fcf:
                require sub_3dd49fcf
                require 1684 * sub_3dd49fcf / sub_3dd49fcf == 1684
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            return ext_call.return_data[0] >= 1684 * sub_3dd49fcf
        if START + (336 * 24 * 3600) > block.timestamp:
            if sub_3dd49fcf:
                require sub_3dd49fcf
                require 1588 * sub_3dd49fcf / sub_3dd49fcf == 1588
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            return ext_call.return_data[0] >= 1588 * sub_3dd49fcf
        if START + (504 * 24 * 3600) <= block.timestamp:
            if sub_3dd49fcf:
                require sub_3dd49fcf
                require 1203 * sub_3dd49fcf / sub_3dd49fcf == 1203
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            return ext_call.return_data[0] >= 1203 * sub_3dd49fcf
        if sub_3dd49fcf:
            require sub_3dd49fcf
            require 1504 * sub_3dd49fcf / sub_3dd49fcf == 1504
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        return ext_call.return_data[0] >= 1504 * sub_3dd49fcf
    if stor4 > 0:
        require stor4 + 60 >= 60
        if sub_3dd49fcf:
            require sub_3dd49fcf
            require (60 * sub_3dd49fcf) + (stor4 * sub_3dd49fcf) / sub_3dd49fcf == stor4 + 60
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        return ext_call.return_data[0] >= (60 * sub_3dd49fcf) + (stor4 * sub_3dd49fcf)
    if START + (168 * 24 * 3600) > block.timestamp:
        if sub_3dd49fcf:
            require sub_3dd49fcf
            require 1744 * sub_3dd49fcf / sub_3dd49fcf == 1744
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        return ext_call.return_data[0] >= 1744 * sub_3dd49fcf
    if START + (336 * 24 * 3600) > block.timestamp:
        if sub_3dd49fcf:
            require sub_3dd49fcf
            require 1648 * sub_3dd49fcf / sub_3dd49fcf == 1648
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        return ext_call.return_data[0] >= 1648 * sub_3dd49fcf
    if START + (504 * 24 * 3600) <= block.timestamp:
        if sub_3dd49fcf:
            require sub_3dd49fcf
            require 1263 * sub_3dd49fcf / sub_3dd49fcf == 1263
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        return ext_call.return_data[0] >= 1263 * sub_3dd49fcf
    if sub_3dd49fcf:
        require sub_3dd49fcf
        require 1564 * sub_3dd49fcf / sub_3dd49fcf == 1564
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0] >= 1564 * sub_3dd49fcf
}

function drain() {
    require msg.sender == owner
    if block.timestamp >= START:
        if block.timestamp <= END:
            if raisedAmount >= stor7:
                if stor4 > 0:
                    require stor4 >= 0
                    if sub_3dd49fcf:
                        require sub_3dd49fcf
                        require sub_3dd49fcf * stor4 / sub_3dd49fcf == stor4
                    require ext_code.size(stor1)
                    call stor1.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0] < sub_3dd49fcf * stor4
                else:
                    if START + (168 * 24 * 3600) > block.timestamp:
                        if sub_3dd49fcf:
                            require sub_3dd49fcf
                            require 1684 * sub_3dd49fcf / sub_3dd49fcf == 1684
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_call.return_data[0] < 1684 * sub_3dd49fcf
                    else:
                        if START + (336 * 24 * 3600) > block.timestamp:
                            if sub_3dd49fcf:
                                require sub_3dd49fcf
                                require 1588 * sub_3dd49fcf / sub_3dd49fcf == 1588
                            require ext_code.size(stor1)
                            call stor1.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            require ext_call.return_data[0] < 1588 * sub_3dd49fcf
                        else:
                            if START + (504 * 24 * 3600) <= block.timestamp:
                                if sub_3dd49fcf:
                                    require sub_3dd49fcf
                                    require 1203 * sub_3dd49fcf / sub_3dd49fcf == 1203
                                require ext_code.size(stor1)
                                call stor1.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0] < 1203 * sub_3dd49fcf
                            else:
                                if sub_3dd49fcf:
                                    require sub_3dd49fcf
                                    require 1504 * sub_3dd49fcf / sub_3dd49fcf == 1504
                                require ext_code.size(stor1)
                                call stor1.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0] < 1504 * sub_3dd49fcf
            else:
                if stor4 > 0:
                    require stor4 + 60 >= 60
                    if sub_3dd49fcf:
                        require sub_3dd49fcf
                        require (60 * sub_3dd49fcf) + (stor4 * sub_3dd49fcf) / sub_3dd49fcf == stor4 + 60
                    require ext_code.size(stor1)
                    call stor1.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0] < (60 * sub_3dd49fcf) + (stor4 * sub_3dd49fcf)
                else:
                    if START + (168 * 24 * 3600) > block.timestamp:
                        if sub_3dd49fcf:
                            require sub_3dd49fcf
                            require 1744 * sub_3dd49fcf / sub_3dd49fcf == 1744
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_call.return_data[0] < 1744 * sub_3dd49fcf
                    else:
                        if START + (336 * 24 * 3600) > block.timestamp:
                            if sub_3dd49fcf:
                                require sub_3dd49fcf
                                require 1648 * sub_3dd49fcf / sub_3dd49fcf == 1648
                            require ext_code.size(stor1)
                            call stor1.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            require ext_call.return_data[0] < 1648 * sub_3dd49fcf
                        else:
                            if START + (504 * 24 * 3600) <= block.timestamp:
                                if sub_3dd49fcf:
                                    require sub_3dd49fcf
                                    require 1263 * sub_3dd49fcf / sub_3dd49fcf == 1263
                                require ext_code.size(stor1)
                                call stor1.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0] < 1263 * sub_3dd49fcf
                            else:
                                if sub_3dd49fcf:
                                    require sub_3dd49fcf
                                    require 1564 * sub_3dd49fcf / sub_3dd49fcf == 1564
                                require ext_code.size(stor1)
                                call stor1.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0] < 1564 * sub_3dd49fcf
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function buyTokens() payable {
    require block.timestamp >= START
    require block.timestamp <= END
    if raisedAmount >= stor7:
        if stor4 > 0:
            require stor4 >= 0
            if sub_3dd49fcf:
                require sub_3dd49fcf
                require sub_3dd49fcf * stor4 / sub_3dd49fcf == stor4
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] >= sub_3dd49fcf * stor4
        else:
            if START + (168 * 24 * 3600) > block.timestamp:
                if sub_3dd49fcf:
                    require sub_3dd49fcf
                    require 1684 * sub_3dd49fcf / sub_3dd49fcf == 1684
                require ext_code.size(stor1)
                call stor1.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] >= 1684 * sub_3dd49fcf
            else:
                if START + (336 * 24 * 3600) > block.timestamp:
                    if sub_3dd49fcf:
                        require sub_3dd49fcf
                        require 1588 * sub_3dd49fcf / sub_3dd49fcf == 1588
                    require ext_code.size(stor1)
                    call stor1.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0] >= 1588 * sub_3dd49fcf
                else:
                    if START + (504 * 24 * 3600) <= block.timestamp:
                        if sub_3dd49fcf:
                            require sub_3dd49fcf
                            require 1203 * sub_3dd49fcf / sub_3dd49fcf == 1203
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_call.return_data[0] >= 1203 * sub_3dd49fcf
                    else:
                        if sub_3dd49fcf:
                            require sub_3dd49fcf
                            require 1504 * sub_3dd49fcf / sub_3dd49fcf == 1504
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_call.return_data[0] >= 1504 * sub_3dd49fcf
    else:
        if stor4 > 0:
            require stor4 + 60 >= 60
            if sub_3dd49fcf:
                require sub_3dd49fcf
                require (60 * sub_3dd49fcf) + (stor4 * sub_3dd49fcf) / sub_3dd49fcf == stor4 + 60
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] >= (60 * sub_3dd49fcf) + (stor4 * sub_3dd49fcf)
        else:
            if START + (168 * 24 * 3600) > block.timestamp:
                if sub_3dd49fcf:
                    require sub_3dd49fcf
                    require 1744 * sub_3dd49fcf / sub_3dd49fcf == 1744
                require ext_code.size(stor1)
                call stor1.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] >= 1744 * sub_3dd49fcf
            else:
                if START + (336 * 24 * 3600) > block.timestamp:
                    if sub_3dd49fcf:
                        require sub_3dd49fcf
                        require 1648 * sub_3dd49fcf / sub_3dd49fcf == 1648
                    require ext_code.size(stor1)
                    call stor1.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0] >= 1648 * sub_3dd49fcf
                else:
                    if START + (504 * 24 * 3600) <= block.timestamp:
                        if sub_3dd49fcf:
                            require sub_3dd49fcf
                            require 1263 * sub_3dd49fcf / sub_3dd49fcf == 1263
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_call.return_data[0] >= 1263 * sub_3dd49fcf
                    else:
                        if sub_3dd49fcf:
                            require sub_3dd49fcf
                            require 1564 * sub_3dd49fcf / sub_3dd49fcf == 1564
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_call.return_data[0] >= 1564 * sub_3dd49fcf
    require msg.value >= sub_3dd49fcf
    if raisedAmount >= stor7:
        if stor4 > 0:
            require stor4 >= 0
            if msg.value:
                require msg.value
                require msg.value * stor4 / msg.value == stor4
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require msg.value * stor4 <= ext_call.return_data[0]
            require raisedAmount + msg.value >= raisedAmount
            raisedAmount += msg.value
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * stor4
            require ext_call.success
            emit BoughtTokens(msg.value, msg.value * stor4, msg.sender);
        else:
            if START + (168 * 24 * 3600) > block.timestamp:
                if msg.value:
                    require msg.value
                    require 1684 * msg.value / msg.value == 1684
                require ext_code.size(stor1)
                call stor1.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require 1684 * msg.value <= ext_call.return_data[0]
                require raisedAmount + msg.value >= raisedAmount
                raisedAmount += msg.value
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1684 * msg.value
                require ext_call.success
                emit BoughtTokens(msg.value, 1684 * msg.value, msg.sender);
            else:
                if START + (336 * 24 * 3600) > block.timestamp:
                    if msg.value:
                        require msg.value
                        require 1588 * msg.value / msg.value == 1588
                    require ext_code.size(stor1)
                    call stor1.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require 1588 * msg.value <= ext_call.return_data[0]
                    require raisedAmount + msg.value >= raisedAmount
                    raisedAmount += msg.value
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 1588 * msg.value
                    require ext_call.success
                    emit BoughtTokens(msg.value, 1588 * msg.value, msg.sender);
                else:
                    if START + (504 * 24 * 3600) <= block.timestamp:
                        if msg.value:
                            require msg.value
                            require 1203 * msg.value / msg.value == 1203
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require 1203 * msg.value <= ext_call.return_data[0]
                        require raisedAmount + msg.value >= raisedAmount
                        raisedAmount += msg.value
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1203 * msg.value
                        require ext_call.success
                        emit BoughtTokens(msg.value, 1203 * msg.value, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 1504 * msg.value / msg.value == 1504
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require 1504 * msg.value <= ext_call.return_data[0]
                        require raisedAmount + msg.value >= raisedAmount
                        raisedAmount += msg.value
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1504 * msg.value
                        require ext_call.success
                        emit BoughtTokens(msg.value, 1504 * msg.value, msg.sender);
    else:
        if stor4 > 0:
            require stor4 + 60 >= 60
            if msg.value:
                require msg.value
                require (60 * msg.value) + (stor4 * msg.value) / msg.value == stor4 + 60
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require (60 * msg.value) + (stor4 * msg.value) <= ext_call.return_data[0]
            require raisedAmount + msg.value >= raisedAmount
            raisedAmount += msg.value
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (60 * msg.value) + (stor4 * msg.value)
            require ext_call.success
            emit BoughtTokens(msg.value, (60 * msg.value) + (stor4 * msg.value), msg.sender);
        else:
            if START + (168 * 24 * 3600) > block.timestamp:
                if msg.value:
                    require msg.value
                    require 1744 * msg.value / msg.value == 1744
                require ext_code.size(stor1)
                call stor1.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require 1744 * msg.value <= ext_call.return_data[0]
                require raisedAmount + msg.value >= raisedAmount
                raisedAmount += msg.value
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1744 * msg.value
                require ext_call.success
                emit BoughtTokens(msg.value, 1744 * msg.value, msg.sender);
            else:
                if START + (336 * 24 * 3600) > block.timestamp:
                    if msg.value:
                        require msg.value
                        require 1648 * msg.value / msg.value == 1648
                    require ext_code.size(stor1)
                    call stor1.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require 1648 * msg.value <= ext_call.return_data[0]
                    require raisedAmount + msg.value >= raisedAmount
                    raisedAmount += msg.value
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 1648 * msg.value
                    require ext_call.success
                    emit BoughtTokens(msg.value, 1648 * msg.value, msg.sender);
                else:
                    if START + (504 * 24 * 3600) <= block.timestamp:
                        if msg.value:
                            require msg.value
                            require 1263 * msg.value / msg.value == 1263
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require 1263 * msg.value <= ext_call.return_data[0]
                        require raisedAmount + msg.value >= raisedAmount
                        raisedAmount += msg.value
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1263 * msg.value
                        require ext_call.success
                        emit BoughtTokens(msg.value, 1263 * msg.value, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 1564 * msg.value / msg.value == 1564
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require 1564 * msg.value <= ext_call.return_data[0]
                        require raisedAmount + msg.value >= raisedAmount
                        raisedAmount += msg.value
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1564 * msg.value
                        require ext_call.success
                        emit BoughtTokens(msg.value, 1564 * msg.value, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require block.timestamp >= START
    require block.timestamp <= END
    if raisedAmount >= stor7:
        if stor4 > 0:
            require stor4 >= 0
            if sub_3dd49fcf:
                require sub_3dd49fcf
                require sub_3dd49fcf * stor4 / sub_3dd49fcf == stor4
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] >= sub_3dd49fcf * stor4
        else:
            if START + (168 * 24 * 3600) > block.timestamp:
                if sub_3dd49fcf:
                    require sub_3dd49fcf
                    require 1684 * sub_3dd49fcf / sub_3dd49fcf == 1684
                require ext_code.size(stor1)
                call stor1.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] >= 1684 * sub_3dd49fcf
            else:
                if START + (336 * 24 * 3600) > block.timestamp:
                    if sub_3dd49fcf:
                        require sub_3dd49fcf
                        require 1588 * sub_3dd49fcf / sub_3dd49fcf == 1588
                    require ext_code.size(stor1)
                    call stor1.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0] >= 1588 * sub_3dd49fcf
                else:
                    if START + (504 * 24 * 3600) <= block.timestamp:
                        if sub_3dd49fcf:
                            require sub_3dd49fcf
                            require 1203 * sub_3dd49fcf / sub_3dd49fcf == 1203
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_call.return_data[0] >= 1203 * sub_3dd49fcf
                    else:
                        if sub_3dd49fcf:
                            require sub_3dd49fcf
                            require 1504 * sub_3dd49fcf / sub_3dd49fcf == 1504
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_call.return_data[0] >= 1504 * sub_3dd49fcf
    else:
        if stor4 > 0:
            require stor4 + 60 >= 60
            if sub_3dd49fcf:
                require sub_3dd49fcf
                require (60 * sub_3dd49fcf) + (stor4 * sub_3dd49fcf) / sub_3dd49fcf == stor4 + 60
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] >= (60 * sub_3dd49fcf) + (stor4 * sub_3dd49fcf)
        else:
            if START + (168 * 24 * 3600) > block.timestamp:
                if sub_3dd49fcf:
                    require sub_3dd49fcf
                    require 1744 * sub_3dd49fcf / sub_3dd49fcf == 1744
                require ext_code.size(stor1)
                call stor1.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] >= 1744 * sub_3dd49fcf
            else:
                if START + (336 * 24 * 3600) > block.timestamp:
                    if sub_3dd49fcf:
                        require sub_3dd49fcf
                        require 1648 * sub_3dd49fcf / sub_3dd49fcf == 1648
                    require ext_code.size(stor1)
                    call stor1.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0] >= 1648 * sub_3dd49fcf
                else:
                    if START + (504 * 24 * 3600) <= block.timestamp:
                        if sub_3dd49fcf:
                            require sub_3dd49fcf
                            require 1263 * sub_3dd49fcf / sub_3dd49fcf == 1263
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_call.return_data[0] >= 1263 * sub_3dd49fcf
                    else:
                        if sub_3dd49fcf:
                            require sub_3dd49fcf
                            require 1564 * sub_3dd49fcf / sub_3dd49fcf == 1564
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_call.return_data[0] >= 1564 * sub_3dd49fcf
    require msg.value >= sub_3dd49fcf
    if raisedAmount >= stor7:
        if stor4 > 0:
            require stor4 >= 0
            if msg.value:
                require msg.value
                require msg.value * stor4 / msg.value == stor4
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require msg.value * stor4 <= ext_call.return_data[0]
            require raisedAmount + msg.value >= raisedAmount
            raisedAmount += msg.value
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * stor4
            require ext_call.success
            emit BoughtTokens(msg.value, msg.value * stor4, msg.sender);
        else:
            if START + (168 * 24 * 3600) > block.timestamp:
                if msg.value:
                    require msg.value
                    require 1684 * msg.value / msg.value == 1684
                require ext_code.size(stor1)
                call stor1.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require 1684 * msg.value <= ext_call.return_data[0]
                require raisedAmount + msg.value >= raisedAmount
                raisedAmount += msg.value
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1684 * msg.value
                require ext_call.success
                emit BoughtTokens(msg.value, 1684 * msg.value, msg.sender);
            else:
                if START + (336 * 24 * 3600) > block.timestamp:
                    if msg.value:
                        require msg.value
                        require 1588 * msg.value / msg.value == 1588
                    require ext_code.size(stor1)
                    call stor1.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require 1588 * msg.value <= ext_call.return_data[0]
                    require raisedAmount + msg.value >= raisedAmount
                    raisedAmount += msg.value
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 1588 * msg.value
                    require ext_call.success
                    emit BoughtTokens(msg.value, 1588 * msg.value, msg.sender);
                else:
                    if START + (504 * 24 * 3600) <= block.timestamp:
                        if msg.value:
                            require msg.value
                            require 1203 * msg.value / msg.value == 1203
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require 1203 * msg.value <= ext_call.return_data[0]
                        require raisedAmount + msg.value >= raisedAmount
                        raisedAmount += msg.value
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1203 * msg.value
                        require ext_call.success
                        emit BoughtTokens(msg.value, 1203 * msg.value, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 1504 * msg.value / msg.value == 1504
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require 1504 * msg.value <= ext_call.return_data[0]
                        require raisedAmount + msg.value >= raisedAmount
                        raisedAmount += msg.value
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1504 * msg.value
                        require ext_call.success
                        emit BoughtTokens(msg.value, 1504 * msg.value, msg.sender);
    else:
        if stor4 > 0:
            require stor4 + 60 >= 60
            if msg.value:
                require msg.value
                require (60 * msg.value) + (stor4 * msg.value) / msg.value == stor4 + 60
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require (60 * msg.value) + (stor4 * msg.value) <= ext_call.return_data[0]
            require raisedAmount + msg.value >= raisedAmount
            raisedAmount += msg.value
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (60 * msg.value) + (stor4 * msg.value)
            require ext_call.success
            emit BoughtTokens(msg.value, (60 * msg.value) + (stor4 * msg.value), msg.sender);
        else:
            if START + (168 * 24 * 3600) > block.timestamp:
                if msg.value:
                    require msg.value
                    require 1744 * msg.value / msg.value == 1744
                require ext_code.size(stor1)
                call stor1.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require 1744 * msg.value <= ext_call.return_data[0]
                require raisedAmount + msg.value >= raisedAmount
                raisedAmount += msg.value
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1744 * msg.value
                require ext_call.success
                emit BoughtTokens(msg.value, 1744 * msg.value, msg.sender);
            else:
                if START + (336 * 24 * 3600) > block.timestamp:
                    if msg.value:
                        require msg.value
                        require 1648 * msg.value / msg.value == 1648
                    require ext_code.size(stor1)
                    call stor1.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require 1648 * msg.value <= ext_call.return_data[0]
                    require raisedAmount + msg.value >= raisedAmount
                    raisedAmount += msg.value
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 1648 * msg.value
                    require ext_call.success
                    emit BoughtTokens(msg.value, 1648 * msg.value, msg.sender);
                else:
                    if START + (504 * 24 * 3600) <= block.timestamp:
                        if msg.value:
                            require msg.value
                            require 1263 * msg.value / msg.value == 1263
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require 1263 * msg.value <= ext_call.return_data[0]
                        require raisedAmount + msg.value >= raisedAmount
                        raisedAmount += msg.value
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1263 * msg.value
                        require ext_call.success
                        emit BoughtTokens(msg.value, 1263 * msg.value, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 1564 * msg.value / msg.value == 1564
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require 1564 * msg.value <= ext_call.return_data[0]
                        require raisedAmount + msg.value >= raisedAmount
                        raisedAmount += msg.value
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1564 * msg.value
                        require ext_call.success
                        emit BoughtTokens(msg.value, 1564 * msg.value, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
