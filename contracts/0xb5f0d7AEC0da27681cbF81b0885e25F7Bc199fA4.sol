contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[6684 len 20]
    stor3 = code.data[6716 len 20]
    stor4 = code.data[6748 len 20]
    stor5 = code.data[6768 len 32]
    stor6 = code.data[6800 len 32]
    stor7 = code.data[6832 len 32]
    return code.data[182 len 6490]
}



// =====================  Runtime code  =====================


address owner;
address pendingOwner;
address adminAddress;
address feeAccount;
address accountLevelsAddr;
uint256 feeMake;
uint256 sub_db6fceb6;
uint256 sub_c3b9fd95;
mapping of uint256 tokens;
mapping of uint8 stor9;
mapping of uint256 orderFills;

function sub_0d47f789(?) {
    return accountLevelsAddr
}

function orderFills(address arg1, bytes32 arg2) {
    return orderFills[arg1][arg2]
}

function amountFilled(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    return orderFills[address(arg7)][hash]
}

function sub_43a41bfa(?) {
    return feeMake
}

function getFeeAccount() {
    return feeAccount
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function feeMake() {
    return feeMake
}

function feeAccount() {
    return feeAccount
}

function getAdmin() {
    return adminAddress
}

function feeRebate() {
    return sub_c3b9fd95
}

function owner() {
    return owner
}

function orders(address arg1, bytes32 arg2) {
    return bool(stor9[arg1][arg2])
}

function feeTake() {
    return sub_db6fceb6
}

function sub_c3b9fd95(?) {
    return sub_c3b9fd95
}

function sub_db6fceb6(?) {
    return sub_db6fceb6
}

function pendingOwner() {
    return pendingOwner
}

function accountLevelsAddr() {
    return accountLevelsAddr
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function changeAdmin(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
}

function changeFeeAccount(address arg1) {
    require adminAddress == msg.sender
    feeAccount = arg1
}

function changeAccountLevelsAddr(address arg1) {
    require adminAddress == msg.sender
    accountLevelsAddr = arg1
}

function changeFeeMake(uint256 arg1) {
    require adminAddress == msg.sender
    require arg1 < feeMake
    feeMake = arg1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function changeFeeTake(uint256 arg1) {
    require adminAddress == msg.sender
    if arg1 >= sub_db6fceb6:
        require arg1 > sub_c3b9fd95
    sub_db6fceb6 = arg1
}

function changeFeeRebate(uint256 arg1) {
    require adminAddress == msg.sender
    if arg1 <= sub_c3b9fd95:
        require arg1 < sub_db6fceb6
    sub_c3b9fd95 = arg1
}

function deposit() payable {
    require msg.value + tokens[0][msg.sender] >= tokens[0][msg.sender]
    tokens[0][msg.sender] += msg.value
    emit Deposit(0, msg.sender, msg.value, msg.value + tokens[0][msg.sender]);
}

function withdraw(uint256 arg1) {
    require tokens[0][msg.sender] > arg1
    require arg1 <= tokens[0][msg.sender]
    tokens[0][msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, tokens[0][msg.sender]);
}

function order(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    stor9[address(msg.sender)][hash] = 1
    emit Order(arg1, 0, address(arg3), arg4, arg5, arg6, address(msg.sender));
}

function withdrawToken(address arg1, uint256 arg2) {
    require arg1
    require tokens[address(arg1)][address(msg.sender)] > arg2
    require arg2 <= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function depositToken(address arg1, uint256 arg2) {
    require arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 + tokens[address(arg1)][address(msg.sender)] >= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, arg2 + tokens[address(arg1)][address(msg.sender)]);
}

function availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    if not stor9[address(arg7)][hash]:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
        require erecover.result
        require address(signer) == arg7
    require block.number <= arg5
    require orderFills[address(arg7)][hash] <= arg2
    if tokens[address(arg3)][address(arg7)]:
        require tokens[address(arg3)][address(arg7)]
        require arg2 * tokens[address(arg3)][address(arg7)] / tokens[address(arg3)][address(arg7)] == arg2
    require arg4
    if arg2 - orderFills[address(arg7)][hash] >= arg2 * tokens[address(arg3)][address(arg7)] / arg4:
        return (arg2 * tokens[address(arg3)][address(arg7)] / arg4)
    return (arg2 - orderFills[address(arg7)][hash])
}

function testTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12) {
    require tokens[address(arg1)][address(arg12)] >= arg11
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    if not stor9[address(arg7)][hash]:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
        require erecover.result
        require address(signer) == arg7
    require block.number <= arg5
    require orderFills[address(arg7)][hash] <= arg2
    if tokens[address(arg3)][address(arg7)]:
        require tokens[address(arg3)][address(arg7)]
        require arg2 * tokens[address(arg3)][address(arg7)] / tokens[address(arg3)][address(arg7)] == arg2
    require arg4
    if arg2 - orderFills[address(arg7)][hash] >= arg2 * tokens[address(arg3)][address(arg7)] / arg4:
        require arg2 * tokens[address(arg3)][address(arg7)] / arg4 >= arg11
    else:
        require arg2 - orderFills[address(arg7)][hash] >= arg11
    return 1
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    if stor9[address(arg7)][hash]:
        require block.number <= arg5
        require arg11 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
        require arg11 + orderFills[address(arg7)][hash] <= arg2
        if arg11:
            require arg11
            require feeMake * arg11 / arg11 == feeMake
        if arg11:
            require arg11
            require sub_db6fceb6 * arg11 / arg11 == sub_db6fceb6
        if not accountLevelsAddr:
            require (sub_db6fceb6 * arg11 / 10^18) + arg11 >= arg11
            require (sub_db6fceb6 * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
            tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (sub_db6fceb6 * arg11 / 10^18) - arg11
            require arg11 >= arg11
            require feeMake * arg11 / 10^18 <= arg11
            require arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
            tokens[address(arg1)][address(arg7)] = arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)]
            require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
            require 0 <= (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18)
            require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) + tokens[address(arg1)][stor3] >= tokens[address(arg1)][stor3]
            tokens[address(arg1)][stor3] = (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) + tokens[address(arg1)][stor3]
        else:
            require ext_code.size(accountLevelsAddr)
            call accountLevelsAddr.accountLevel(address rg1) with:
                 gas gas_remaining - 710 wei
                args arg7
            require ext_call.success
            if ext_call.return_data[31 len 1] != 1:
                require (sub_db6fceb6 * arg11 / 10^18) + arg11 >= arg11
                require (sub_db6fceb6 * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
                tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (sub_db6fceb6 * arg11 / 10^18) - arg11
                if ext_call.return_data[31 len 1] != 2:
                    require arg11 >= arg11
                    require feeMake * arg11 / 10^18 <= arg11
                    require arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
                    tokens[address(arg1)][address(arg7)] = arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)]
                    require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
                    require 0 <= (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18)
                    require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) + tokens[address(arg1)][stor3] >= tokens[address(arg1)][stor3]
                    tokens[address(arg1)][stor3] = (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) + tokens[address(arg1)][stor3]
                else:
                    require (sub_db6fceb6 * arg11 / 10^18) + arg11 >= arg11
                    require feeMake * arg11 / 10^18 <= (sub_db6fceb6 * arg11 / 10^18) + arg11
                    require (sub_db6fceb6 * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
                    tokens[address(arg1)][address(arg7)] = (sub_db6fceb6 * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)]
                    require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
                    require sub_db6fceb6 * arg11 / 10^18 <= (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18)
                    require (feeMake * arg11 / 10^18) + tokens[address(arg1)][stor3] >= tokens[address(arg1)][stor3]
                    tokens[address(arg1)][stor3] += feeMake * arg11 / 10^18
            else:
                if arg11:
                    require arg11
                    require sub_c3b9fd95 * arg11 / arg11 == sub_c3b9fd95
                require (sub_db6fceb6 * arg11 / 10^18) + arg11 >= arg11
                require (sub_db6fceb6 * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
                tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (sub_db6fceb6 * arg11 / 10^18) - arg11
                if ext_call.return_data[31 len 1] != 2:
                    require (sub_c3b9fd95 * arg11 / 10^18) + arg11 >= arg11
                    require feeMake * arg11 / 10^18 <= (sub_c3b9fd95 * arg11 / 10^18) + arg11
                    require (sub_c3b9fd95 * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
                    tokens[address(arg1)][address(arg7)] = (sub_c3b9fd95 * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)]
                    require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
                    require sub_c3b9fd95 * arg11 / 10^18 <= (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18)
                    require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) - (sub_c3b9fd95 * arg11 / 10^18) + tokens[address(arg1)][stor3] >= tokens[address(arg1)][stor3]
                    tokens[address(arg1)][stor3] = (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) - (sub_c3b9fd95 * arg11 / 10^18) + tokens[address(arg1)][stor3]
                else:
                    require (sub_db6fceb6 * arg11 / 10^18) + arg11 >= arg11
                    require feeMake * arg11 / 10^18 <= (sub_db6fceb6 * arg11 / 10^18) + arg11
                    require (sub_db6fceb6 * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
                    tokens[address(arg1)][address(arg7)] = (sub_db6fceb6 * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)]
                    require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
                    require sub_db6fceb6 * arg11 / 10^18 <= (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18)
                    require (feeMake * arg11 / 10^18) + tokens[address(arg1)][stor3] >= tokens[address(arg1)][stor3]
                    tokens[address(arg1)][stor3] += feeMake * arg11 / 10^18
        if arg4:
            require arg4
            require arg11 * arg4 / arg4 == arg11
        require arg2
        require arg11 * arg4 / arg2 <= tokens[address(arg3)][address(arg7)]
        tokens[address(arg3)][address(arg7)] -= arg11 * arg4 / arg2
        if arg4:
            require arg4
            require arg11 * arg4 / arg4 == arg11
        require arg2
        require (arg11 * arg4 / arg2) + tokens[address(arg3)][address(msg.sender)] >= tokens[address(arg3)][address(msg.sender)]
        tokens[address(arg3)][address(msg.sender)] += arg11 * arg4 / arg2
        require arg11 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
        orderFills[address(arg7)][hash] += arg11
        require arg2
        emit Trade(arg1, 0, address(arg3), arg11 * arg4 / arg2, address(arg7), msg.sender);
    else:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
        require erecover.result
        require address(signer) == arg7
        require block.number <= arg5
        require arg11 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
        require arg11 + orderFills[address(arg7)][hash] <= arg2
        if arg11:
            require arg11
            require feeMake * arg11 / arg11 == feeMake
        if arg11:
            require arg11
            require sub_db6fceb6 * arg11 / arg11 == sub_db6fceb6
        if not accountLevelsAddr:
            require (sub_db6fceb6 * arg11 / 10^18) + arg11 >= arg11
            require (sub_db6fceb6 * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
            tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (sub_db6fceb6 * arg11 / 10^18) - arg11
            require arg11 >= arg11
            require feeMake * arg11 / 10^18 <= arg11
            require arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
            tokens[address(arg1)][address(arg7)] = arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)]
            require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
            require 0 <= (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18)
            require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) + tokens[address(arg1)][stor3] >= tokens[address(arg1)][stor3]
            tokens[address(arg1)][stor3] = (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) + tokens[address(arg1)][stor3]
        else:
            require ext_code.size(accountLevelsAddr)
            call accountLevelsAddr.accountLevel(address rg1) with:
                 gas gas_remaining - 710 wei
                args arg7
            require ext_call.success
            if ext_call.return_data[31 len 1] != 1:
                require (sub_db6fceb6 * arg11 / 10^18) + arg11 >= arg11
                require (sub_db6fceb6 * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
                tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (sub_db6fceb6 * arg11 / 10^18) - arg11
                if ext_call.return_data[31 len 1] != 2:
                    require arg11 >= arg11
                    require feeMake * arg11 / 10^18 <= arg11
                    require arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
                    tokens[address(arg1)][address(arg7)] = arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)]
                    require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
                    require 0 <= (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18)
                    require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) + tokens[address(arg1)][stor3] >= tokens[address(arg1)][stor3]
                    tokens[address(arg1)][stor3] = (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) + tokens[address(arg1)][stor3]
                else:
                    require (sub_db6fceb6 * arg11 / 10^18) + arg11 >= arg11
                    require feeMake * arg11 / 10^18 <= (sub_db6fceb6 * arg11 / 10^18) + arg11
                    require (sub_db6fceb6 * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
                    tokens[address(arg1)][address(arg7)] = (sub_db6fceb6 * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)]
                    require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
                    require sub_db6fceb6 * arg11 / 10^18 <= (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18)
                    require (feeMake * arg11 / 10^18) + tokens[address(arg1)][stor3] >= tokens[address(arg1)][stor3]
                    tokens[address(arg1)][stor3] += feeMake * arg11 / 10^18
            else:
                if arg11:
                    require arg11
                    require sub_c3b9fd95 * arg11 / arg11 == sub_c3b9fd95
                require (sub_db6fceb6 * arg11 / 10^18) + arg11 >= arg11
                require (sub_db6fceb6 * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
                tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (sub_db6fceb6 * arg11 / 10^18) - arg11
                if ext_call.return_data[31 len 1] != 2:
                    require (sub_c3b9fd95 * arg11 / 10^18) + arg11 >= arg11
                    require feeMake * arg11 / 10^18 <= (sub_c3b9fd95 * arg11 / 10^18) + arg11
                    require (sub_c3b9fd95 * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
                    tokens[address(arg1)][address(arg7)] = (sub_c3b9fd95 * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)]
                    require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
                    require sub_c3b9fd95 * arg11 / 10^18 <= (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18)
                    require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) - (sub_c3b9fd95 * arg11 / 10^18) + tokens[address(arg1)][stor3] >= tokens[address(arg1)][stor3]
                    tokens[address(arg1)][stor3] = (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) - (sub_c3b9fd95 * arg11 / 10^18) + tokens[address(arg1)][stor3]
                else:
                    require (sub_db6fceb6 * arg11 / 10^18) + arg11 >= arg11
                    require feeMake * arg11 / 10^18 <= (sub_db6fceb6 * arg11 / 10^18) + arg11
                    require (sub_db6fceb6 * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
                    tokens[address(arg1)][address(arg7)] = (sub_db6fceb6 * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(arg7)]
                    require (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
                    require sub_db6fceb6 * arg11 / 10^18 <= (sub_db6fceb6 * arg11 / 10^18) + (feeMake * arg11 / 10^18)
                    require (feeMake * arg11 / 10^18) + tokens[address(arg1)][stor3] >= tokens[address(arg1)][stor3]
                    tokens[address(arg1)][stor3] += feeMake * arg11 / 10^18
        if arg4:
            require arg4
            require arg11 * arg4 / arg4 == arg11
        require arg2
        require arg11 * arg4 / arg2 <= tokens[address(arg3)][address(arg7)]
        tokens[address(arg3)][address(arg7)] -= arg11 * arg4 / arg2
        if arg4:
            require arg4
            require arg11 * arg4 / arg4 == arg11
        require arg2
        require (arg11 * arg4 / arg2) + tokens[address(arg3)][address(msg.sender)] >= tokens[address(arg3)][address(msg.sender)]
        tokens[address(arg3)][address(msg.sender)] += arg11 * arg4 / arg2
        require arg11 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
        orderFills[address(arg7)][hash] += arg11
        require arg2
        emit Trade(address(arg1), arg11, address(arg3), arg11 * arg4 / arg2, address(arg7), msg.sender);
}



}
