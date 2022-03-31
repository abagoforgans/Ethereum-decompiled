contract main {


// =======================  Init code  ======================


uint16 stor0; offset 168
address stor0;
address stor3;
address stor6;
uint256 stor7;
mapping of uint256 stor8;

function _fallback() payable {
    uint16(stor0.field_168) = 500
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor3 = code.data[4881 len 20]
    stor6 = code.data[4913 len 20]
    if address(stor0.field_0) == msg.sender:
        stor7 += code.data[4837 len 32]
        stor8[stor3] += code.data[4837 len 32]
        emit 0x652ca758: code.data[4837 len 32]
    return code.data[327 len 4510]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint8 contractState; offset 160
uint16 stor0;
uint16 stor0; offset 168
uint16 feePercent; offset 184
address owner;
address stor1;
address stor2;
address sub_3e4ac25aAddress;
address stor4;
address stor5;
address stor6;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of struct stor9;

function sub_3e4ac25a(?) {
    return sub_3e4ac25aAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function coins(address arg1) {
    return balanceOf[arg1]
}

function contractState() {
    require contractState <= 1
    return contractState
}

function owner() {
    return owner
}

function getFeePercent() {
    return feePercent
}

function getTotalSupply() {
    return totalSupply
}

function kill() {
    if owner != msg.sender:
    contractState = 0
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function isContract(address arg1) {
    return (ext_code.size(arg1) > 1)
}

function calculateFee(uint256 arg1) {
    return (arg1 * feePercent / 10000)
}

function sub_fbbc1171(?) {
    if owner == msg.sender:
        contractState = 0
}

function activateContract() {
    if owner == msg.sender:
        contractState = 1
}

function changeOwner(address arg1) {
    if owner == msg.sender:
        owner = arg1
        emit OwnerChanged(owner, arg1);
}

function sub_7dc9de61(?) {
    if owner == msg.sender:
        require contractState <= 1
        if not contractState:
            stor1 = arg1
}

function sub_acb21bdb(?) {
    if owner == msg.sender:
        require contractState <= 1
        if not contractState:
            stor2 = arg1
}

function checkStatus() {
    require contractState <= 1
    return uint8(stor0.field_0), sub_3e4ac25aAddress, stor1, stor2, stor4, uint16(stor0.field_0)
}

function mintCoins(uint256 arg1) {
    if owner == msg.sender:
        totalSupply += arg1
        balanceOf[stor3] += arg1
        emit 0x652ca758: arg1
}

function sub_abc581e6(?) {
    if owner == msg.sender:
        require contractState <= 1
        if not contractState:
            if arg1 > 0:
                uint16(stor0.field_168) = arg1
}

function setFeeAccount(address arg1) {
    if owner == msg.sender:
        require contractState <= 1
        if not contractState:
            stor5 = arg1
            emit 0xd428c493: arg1, sha3('Fee account')
}

function sub_bcf4a5b6(?) {
    if owner == msg.sender:
        require contractState <= 1
        if not contractState:
            sub_3e4ac25aAddress = arg1
            emit 0xd428c493: arg1, sha3('Oz Coin account')
}

function sub_77f9961e(?) {
    if owner == msg.sender:
        require contractState <= 1
        if not contractState:
            if sub_3e4ac25aAddress != arg1:
                stor4 = arg1
                emit 0xd428c493: arg1, sha3('Arbiter account')
}

function sub_1f734cea(?) {
    if sub_3e4ac25aAddress == msg.sender:
        require contractState <= 1
        if contractState == 1:
            if ext_code.size(msg.sender) <= 1:
                if stor9[arg1].field_256:
                    stor9[arg1].field_512 = block.number
                    emit 0xd3f99389: arg1, msg.sender
}

function sub_bace8d44(?) {
    if owner == msg.sender:
        require contractState <= 1
        if not contractState:
            if arg1:
                require ext_code.size(stor6)
                call stor6.0x70a08231 with:
                     gas gas_remaining - 50 wei
                    args arg1
                require ext_call.success
                balanceOf[address(arg1)] = ext_call.return_data[0]
}

function setFeePercent(uint16 arg1) {
    if stor1 == msg.sender:
        require contractState <= 1
        if contractState == 1:
            if arg1 >= 0:
                if arg1 < 10000:
                    feePercent = arg1
    else:
        if stor2 == msg.sender:
            require contractState <= 1
            if contractState == 1:
                if arg1 >= 0:
                    if arg1 < 10000:
                        feePercent = arg1
}

function sub_977c9e33(?) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            return 0
    require contractState <= 1
    if contractState != 1:
        return 0
    if ext_code.size(msg.sender) > 1 != 1:
        return 0
    if arg3 > balanceOf[address(arg1)]:
        emit 0x955b455e: address(arg1), address(arg2), arg3
        return 0
    if arg3 - (arg3 * feePercent / 10000) <= 0:
        return 0
    balanceOf[address(arg1)] -= arg3 * feePercent / 10000
    balanceOf[stor5] += arg3 * feePercent / 10000
    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * feePercent / 10000)
    balanceOf[arg2] = arg3 - (arg3 * feePercent / 10000) + balanceOf[arg2]
    return (arg3 - (arg3 * feePercent / 10000))
}

function sub_6880024a(?) {
    if stor1 == msg.sender:
        require contractState <= 1
        if contractState == 1:
            if ext_code.size(msg.sender) > 1 == 1:
                if not stor9[msg.sender][block.number].field_256:
                    stor9[msg.sender][block.number].field_0 = arg1
                    stor9[msg.sender][block.number].field_256 = block.number
                    stor9[msg.sender][block.number].field_512 = 0
                    emit 0x31e90e28: sha3(msg.sender, block.number), arg1
    else:
        if stor2 == msg.sender:
            require contractState <= 1
            if contractState == 1:
                if ext_code.size(msg.sender) > 1 == 1:
                    if not stor9[msg.sender][block.number].field_256:
                        stor9[msg.sender][block.number].field_0 = arg1
                        stor9[msg.sender][block.number].field_256 = block.number
                        stor9[msg.sender][block.number].field_512 = 0
                        emit 0x31e90e28: sha3(msg.sender, block.number), arg1
}

function sub_40c33042(?) {
    if stor4 == msg.sender:
        require contractState <= 1
        if contractState == 1:
            if arg3 > 0:
                if balanceOf[address(arg1)] >= arg3:
                    if ext_code.size(msg.sender) <= 1:
                        if stor9[arg4].field_256:
                            if stor9[arg4].field_0 == arg1:
                                if block.number - stor9[arg4].field_512 <= uint16(stor0.field_168):
                                    stor9[arg4].field_0 = 0
                                    stor9[arg4].field_256 = 0
                                    stor9[arg4].field_512 = 0
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[arg2] += arg3
                                    emit 0x2806b30a: address(arg2), msg.sender, arg3, arg1
                            else:
                                if stor9[arg4].field_0 == arg2:
                                    if block.number - stor9[arg4].field_512 <= uint16(stor0.field_168):
                                        stor9[arg4].field_0 = 0
                                        stor9[arg4].field_256 = 0
                                        stor9[arg4].field_512 = 0
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[arg2] += arg3
                                        emit 0x2806b30a: address(arg2), msg.sender, arg3, arg1
}



}
