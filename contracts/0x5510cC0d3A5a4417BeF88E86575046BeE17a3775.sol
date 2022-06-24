contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 isAuthorized;
uint256 authorizedCount;
uint8 stor4;
address coldWalletAddress; offset 8
uint256 tokensSold;
address sub_4dd7eec6Address;
uint256 sub_d5bcf041;
uint256 sub_3953c151;
uint256 sub_4032f8e7;
uint256 sub_dbcfdb07;
uint256 sub_3d5de3a2;
uint256 sub_9f18a3e9;
uint256 sub_5284c2d1;
uint256 sub_6e288df1;
uint256 sub_cc330c49;
uint256 sub_74e4c863;
uint256 sub_e1f28e05;
uint256 sub_25489fc0;

function authorizedCount() {
    return authorizedCount
}

function sub_25489fc0(?) {
    return sub_25489fc0
}

function sub_3953c151(?) {
    return sub_3953c151
}

function sub_3d5de3a2(?) {
    return sub_3d5de3a2
}

function sub_4032f8e7(?) {
    return sub_4032f8e7
}

function sub_4dd7eec6(?) {
    return sub_4dd7eec6Address
}

function tokensSold() {
    return tokensSold
}

function sub_5284c2d1(?) {
    return sub_5284c2d1
}

function paused() {
    return bool(stor4)
}

function coldWallet() {
    return coldWalletAddress
}

function sub_6e288df1(?) {
    return sub_6e288df1
}

function sub_74e4c863(?) {
    return sub_74e4c863
}

function owner() {
    return owner
}

function sub_9f18a3e9(?) {
    return sub_9f18a3e9
}

function sub_cc330c49(?) {
    return sub_cc330c49
}

function newOwner() {
    return newOwner
}

function sub_d5bcf041(?) {
    return sub_d5bcf041
}

function sub_dbcfdb07(?) {
    return sub_dbcfdb07
}

function sub_e1f28e05(?) {
    return sub_e1f28e05
}

function isAuthorized(address arg1) {
    require arg1
    require isAuthorized[address(arg1)] <= 3
    return isAuthorized[address(arg1)]
}

function unpause() {
    require isAuthorized[address(msg.sender)] <= 3
    require isAuthorized[address(msg.sender)] == 1
    require stor4
    stor4 = 0
    emit Unpause()
}

function pause() {
    require isAuthorized[address(msg.sender)] <= 3
    require isAuthorized[address(msg.sender)] == 1
    require not stor4
    stor4 = 1
    emit Pause()
}

function sub_4b65e176(?) {
    require isAuthorized[address(msg.sender)] <= 3
    require isAuthorized[address(msg.sender)] > 0
    require isAuthorized[address(msg.sender)] <= 3
    require arg1
    sub_4dd7eec6Address = arg1
    return 1
}

function setColdWallet(address arg1) {
    require isAuthorized[address(msg.sender)] <= 3
    require isAuthorized[address(msg.sender)] > 0
    require isAuthorized[address(msg.sender)] <= 3
    require arg1
    coldWalletAddress = arg1
    return 1
}

function unAuthorized(address arg1) {
    require isAuthorized[address(msg.sender)] <= 3
    require isAuthorized[address(msg.sender)] == 1
    require arg1
    require isAuthorized[address(arg1)] <= 3
    if isAuthorized[address(arg1)] > 0:
        authorizedCount--
    isAuthorized[address(arg1)] = 0
    emit UnAuthorized(arg1);
}

function sub_0e767cf6(?) {
    require isAuthorized[address(msg.sender)] <= 3
    require isAuthorized[address(msg.sender)] > 0
    require isAuthorized[address(msg.sender)] <= 3
    sub_5284c2d1 = arg1
    sub_6e288df1 = arg2
    sub_cc330c49 = arg3
    sub_74e4c863 = arg4
    sub_e1f28e05 = arg5
    sub_25489fc0 = arg6
    return 1
}

function sub_a5eec669(?) {
    require isAuthorized[address(msg.sender)] <= 3
    require isAuthorized[address(msg.sender)] > 0
    require isAuthorized[address(msg.sender)] <= 3
    sub_d5bcf041 = arg1
    sub_3953c151 = arg2
    sub_4032f8e7 = arg3
    sub_dbcfdb07 = arg4
    sub_3d5de3a2 = arg5
    sub_9f18a3e9 = arg6
    return 1
}

function authorized(address arg1, uint8 arg2) {
    require isAuthorized[address(msg.sender)] <= 3
    require isAuthorized[address(msg.sender)] == 1
    require arg1
    require arg2 <= 3
    require arg2 > 0
    require arg2 <= 3
    require 3 >= arg2
    require isAuthorized[address(arg1)] <= 3
    if not isAuthorized[address(arg1)]:
        authorizedCount++
    require arg2 <= 3
    isAuthorized[address(arg1)] = arg2
    emit Authorized(arg2, arg1);
}

function withdrawTokens(address arg1, uint256 arg2) {
    require isAuthorized[address(msg.sender)] <= 3
    require isAuthorized[address(msg.sender)] > 0
    require isAuthorized[address(msg.sender)] <= 3
    require isAuthorized[address(msg.sender)] <= 2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function withdrawAmount(uint256 arg1) {
    require isAuthorized[address(msg.sender)] <= 3
    require isAuthorized[address(msg.sender)] > 0
    require isAuthorized[address(msg.sender)] <= 3
    require isAuthorized[address(msg.sender)] <= 2
    if owner:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function withdraw() {
    require isAuthorized[address(msg.sender)] <= 3
    require isAuthorized[address(msg.sender)] > 0
    require isAuthorized[address(msg.sender)] <= 3
    require isAuthorized[address(msg.sender)] <= 2
    if owner:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_0ed8b0ea(?) payable {
    require not stor4
    require msg.value >= sub_d5bcf041
    if msg.value < sub_3953c151:
        require 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18 > 0
        call coldWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_4dd7eec6Address)
        call sub_4dd7eec6Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        tokensSold += 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18
        emit Purchased(msg.value, 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18, msg.sender);
    else:
        if msg.value < sub_4032f8e7:
            require 10^18 * sub_6e288df1 * msg.value / 10^18 / 10^18 > 0
            call coldWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_4dd7eec6Address)
            call sub_4dd7eec6Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 10^18 * sub_6e288df1 * msg.value / 10^18 / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            tokensSold += 10^18 * sub_6e288df1 * msg.value / 10^18 / 10^18
            emit Purchased(msg.value, 10^18 * sub_6e288df1 * msg.value / 10^18 / 10^18, msg.sender);
        else:
            if msg.value < sub_dbcfdb07:
                require 10^18 * sub_cc330c49 * msg.value / 10^18 / 10^18 > 0
                call coldWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_4dd7eec6Address)
                call sub_4dd7eec6Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 10^18 * sub_cc330c49 * msg.value / 10^18 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                tokensSold += 10^18 * sub_cc330c49 * msg.value / 10^18 / 10^18
                emit Purchased(msg.value, 10^18 * sub_cc330c49 * msg.value / 10^18 / 10^18, msg.sender);
            else:
                if msg.value < sub_3d5de3a2:
                    require 10^18 * sub_74e4c863 * msg.value / 10^18 / 10^18 > 0
                    call coldWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_4dd7eec6Address)
                    call sub_4dd7eec6Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * sub_74e4c863 * msg.value / 10^18 / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    tokensSold += 10^18 * sub_74e4c863 * msg.value / 10^18 / 10^18
                    emit Purchased(msg.value, 10^18 * sub_74e4c863 * msg.value / 10^18 / 10^18, msg.sender);
                else:
                    if msg.value < sub_9f18a3e9:
                        require 10^18 * sub_e1f28e05 * msg.value / 10^18 / 10^18 > 0
                        call coldWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_4dd7eec6Address)
                        call sub_4dd7eec6Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * sub_e1f28e05 * msg.value / 10^18 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        tokensSold += 10^18 * sub_e1f28e05 * msg.value / 10^18 / 10^18
                        emit Purchased(msg.value, 10^18 * sub_e1f28e05 * msg.value / 10^18 / 10^18, msg.sender);
                    else:
                        if msg.value <= sub_9f18a3e9:
                            require 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18 > 0
                            call coldWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_4dd7eec6Address)
                            call sub_4dd7eec6Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            tokensSold += 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18
                            emit Purchased(msg.value, 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18, msg.sender);
                        else:
                            require 10^18 * sub_25489fc0 * msg.value / 10^18 / 10^18 > 0
                            call coldWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_4dd7eec6Address)
                            call sub_4dd7eec6Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_25489fc0 * msg.value / 10^18 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            tokensSold += 10^18 * sub_25489fc0 * msg.value / 10^18 / 10^18
                            emit Purchased(msg.value, 10^18 * sub_25489fc0 * msg.value / 10^18 / 10^18, msg.sender);
}

function _fallback() payable {
    require not stor4
    require msg.value >= sub_d5bcf041
    require not stor4
    require msg.value >= sub_d5bcf041
    if msg.value < sub_3953c151:
        require 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18 > 0
        call coldWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_4dd7eec6Address)
        call sub_4dd7eec6Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        tokensSold += 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18
        emit Purchased(msg.value, 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18, msg.sender);
    else:
        if msg.value < sub_4032f8e7:
            require 10^18 * sub_6e288df1 * msg.value / 10^18 / 10^18 > 0
            call coldWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_4dd7eec6Address)
            call sub_4dd7eec6Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 10^18 * sub_6e288df1 * msg.value / 10^18 / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            tokensSold += 10^18 * sub_6e288df1 * msg.value / 10^18 / 10^18
            emit Purchased(msg.value, 10^18 * sub_6e288df1 * msg.value / 10^18 / 10^18, msg.sender);
        else:
            if msg.value < sub_dbcfdb07:
                require 10^18 * sub_cc330c49 * msg.value / 10^18 / 10^18 > 0
                call coldWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_4dd7eec6Address)
                call sub_4dd7eec6Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 10^18 * sub_cc330c49 * msg.value / 10^18 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                tokensSold += 10^18 * sub_cc330c49 * msg.value / 10^18 / 10^18
                emit Purchased(msg.value, 10^18 * sub_cc330c49 * msg.value / 10^18 / 10^18, msg.sender);
            else:
                if msg.value < sub_3d5de3a2:
                    require 10^18 * sub_74e4c863 * msg.value / 10^18 / 10^18 > 0
                    call coldWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_4dd7eec6Address)
                    call sub_4dd7eec6Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * sub_74e4c863 * msg.value / 10^18 / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    tokensSold += 10^18 * sub_74e4c863 * msg.value / 10^18 / 10^18
                    emit Purchased(msg.value, 10^18 * sub_74e4c863 * msg.value / 10^18 / 10^18, msg.sender);
                else:
                    if msg.value < sub_9f18a3e9:
                        require 10^18 * sub_e1f28e05 * msg.value / 10^18 / 10^18 > 0
                        call coldWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_4dd7eec6Address)
                        call sub_4dd7eec6Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * sub_e1f28e05 * msg.value / 10^18 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        tokensSold += 10^18 * sub_e1f28e05 * msg.value / 10^18 / 10^18
                        emit Purchased(msg.value, 10^18 * sub_e1f28e05 * msg.value / 10^18 / 10^18, msg.sender);
                    else:
                        if msg.value <= sub_9f18a3e9:
                            require 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18 > 0
                            call coldWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_4dd7eec6Address)
                            call sub_4dd7eec6Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            tokensSold += 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18
                            emit Purchased(msg.value, 10^18 * sub_5284c2d1 * msg.value / 10^18 / 10^18, msg.sender);
                        else:
                            require 10^18 * sub_25489fc0 * msg.value / 10^18 / 10^18 > 0
                            call coldWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_4dd7eec6Address)
                            call sub_4dd7eec6Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_25489fc0 * msg.value / 10^18 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            tokensSold += 10^18 * sub_25489fc0 * msg.value / 10^18 / 10^18
                            emit Purchased(msg.value, 10^18 * sub_25489fc0 * msg.value / 10^18 / 10^18, msg.sender);
}



}
