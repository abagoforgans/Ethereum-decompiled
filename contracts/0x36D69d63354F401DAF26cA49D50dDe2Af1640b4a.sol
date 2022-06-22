contract main {




// =====================  Runtime code  =====================


const version = 0


address sub_45875853Address;
address oracleAddress;
address debtTokenAddress;
address sub_269bbf24Address;
array of struct vaults;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint32 liquidationRatio;
uint32 sub_f5364599; offset 32
uint256 sub_29013659;
uint256 sub_01f64398;
uint256 sub_0ce7bb35;
uint256 sub_a0121cfe;
uint256 sub_85a93715;
uint256 sub_2280af7a;
uint256 amountMinted;

function sub_01f64398(?) {
    return sub_01f64398
}

function sub_0ce7bb35(?) {
    return sub_0ce7bb35
}

function sub_16d37595(?) {
    return bool(stor5[arg1])
}

function liquidationRatio() {
    return liquidationRatio
}

function sub_2280af7a(?) {
    return sub_2280af7a
}

function sub_269bbf24(?) {
    return sub_269bbf24Address
}

function sub_29013659(?) {
    return sub_29013659
}

function sub_45875853(?) {
    return sub_45875853Address
}

function amountMinted() {
    return amountMinted
}

function oracle() {
    return oracleAddress
}

function sub_85a93715(?) {
    return sub_85a93715
}

function vaults(uint256 arg1) {
    require arg1 < vaults.length
    return vaults[arg1].field_0
}

function sub_a0121cfe(?) {
    return sub_a0121cfe
}

function authorized(address arg1) {
    return bool(stor6[arg1])
}

function sub_f5364599(?) {
    return sub_f5364599
}

function debtToken() {
    return debtTokenAddress
}

function _fallback() payable {
    revert
}

function sub_b39da809(?) {
    require bool(stor6[address(msg.sender)]) == 1
    amountMinted = arg1
}

function sub_7a30522a(?) {
    require bool(stor6[address(msg.sender)]) == 1
    emit 0xa519f264: arg1
}

function sub_16c0b5e2(?) {
    require bool(stor6[address(msg.sender)]) == 1
    emit Repay(arg2, arg1);
}

function sub_3ac88dc2(?) {
    require bool(stor6[address(msg.sender)]) == 1
    emit Borrow(arg2, arg1);
}

function sub_b014da21(?) {
    require bool(stor6[address(msg.sender)]) == 1
    emit Withdraw(arg2, arg1);
}

function sub_bb795ffe(?) {
    require bool(stor6[address(msg.sender)]) == 1
    emit 0xdbbfd340: liquidationRatio, arg1
    sub_f5364599 = arg1
}

function sub_eb9fbe6c(?) {
    require bool(stor6[address(msg.sender)]) == 1
    emit 0x380f1664: liquidationRatio, arg1
    liquidationRatio = arg1
}

function setOracle(address arg1) {
    require bool(stor6[address(msg.sender)]) == 1
    emit OracleUpgrade(oracleAddress, arg1);
    oracleAddress = arg1
}

function setDebtToken(address arg1) {
    require bool(stor6[address(msg.sender)]) == 1
    emit 0xb4df7107: debtTokenAddress, arg1
    debtTokenAddress = arg1
}

function authorize(address arg1, bool arg2) {
    require bool(stor6[address(msg.sender)]) == 1
    emit Authorize(address(arg1), arg2);
    stor6[address(arg1)] = uint8(arg2)
}

function sub_08a469c4(?) {
    require bool(stor6[address(msg.sender)]) == 1
    emit NewVault(arg1, arg2);
    vaults.length++
    vaults[vaults.length].field_0 = arg1
    stor5[address(arg1)] = 1
}

function sub_856a7583(?) {
    require bool(stor6[address(msg.sender)]) == 1
    emit LogicUpgrade(sub_269bbf24Address, arg1);
    stor6[address(arg1)] = 1
    stor6[stor3] = 0
    sub_269bbf24Address = arg1
}

function transferERC20Token(address arg1, address arg2, uint256 arg3) {
    require bool(stor6[address(msg.sender)]) == 1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getVaults() {
    if not vaults.length:
        mem[(32 * vaults.length) + 128] = 32
        mem[(32 * vaults.length) + 160] = vaults.length
        mem[(32 * vaults.length) + 192 len floor32(vaults.length)] = mem[128 len floor32(vaults.length)]
        return memory
          from (32 * vaults.length) + 128
           len (96 * vaults.length) + 64
    mem[128] = address(vaults.field_0)
    idx = 128
    s = 0
    while (32 * vaults.length) + 96 > idx:
        mem[idx + 32] = vaults[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * vaults.length) + 192 len floor32(vaults.length)] = mem[128 len floor32(vaults.length)]
    return Array(len=vaults.length, data=mem[128 len floor32(vaults.length)], mem[(32 * vaults.length) + floor32(vaults.length) + 192 len (32 * vaults.length) - floor32(vaults.length)]), 
}

function sub_8b6cb916(?) {
    require bool(stor6[address(msg.sender)]) == 1
    emit 0xf24c15a1: sub_0ce7bb35, arg1
    require block.number >= sub_01f64398
    if not sub_0ce7bb35:
        require sub_29013659 >= sub_29013659
    else:
        require sub_0ce7bb35
        require (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35) / sub_0ce7bb35 == block.number - sub_01f64398
        if (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35) < 0:
            require sub_29013659 + (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35) < sub_29013659
        else:
            if sub_29013659 + (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35) < sub_29013659:
                require (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35) < 0
                require sub_29013659 + (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35) < sub_29013659
        sub_29013659 = sub_29013659 + (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35)
    sub_01f64398 = block.number
    sub_0ce7bb35 = arg1
}

function sub_b41c7a51(?) {
    require bool(stor6[address(msg.sender)]) == 1
    emit 0xb587264c: sub_2280af7a, arg1
    require block.number >= sub_85a93715
    if not sub_2280af7a:
        require sub_a0121cfe >= sub_a0121cfe
    else:
        require sub_2280af7a
        require (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a) / sub_2280af7a == block.number - sub_85a93715
        if (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a) < 0:
            require sub_a0121cfe + (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a) < sub_a0121cfe
        else:
            if sub_a0121cfe + (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a) < sub_a0121cfe:
                require (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a) < 0
                require sub_a0121cfe + (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a) < sub_a0121cfe
        sub_a0121cfe = sub_a0121cfe + (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a)
    sub_85a93715 = block.number
    sub_2280af7a = arg1
}

function sub_97bda041(?) {
    require block.number >= sub_85a93715
    if not sub_2280af7a:
        if sub_a0121cfe >= sub_a0121cfe:
            return sub_a0121cfe
    else:
        if sub_2280af7a:
            if (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a) / sub_2280af7a == block.number - sub_85a93715:
                if (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a) < 0:
                    if sub_a0121cfe + (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a) < sub_a0121cfe:
                        return (sub_a0121cfe + (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a))
                else:
                    if sub_a0121cfe + (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a) >= sub_a0121cfe:
                        return (sub_a0121cfe + (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a))
                    if (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a) < 0:
                        if sub_a0121cfe + (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a) < sub_a0121cfe:
                            return (sub_a0121cfe + (block.number * sub_2280af7a) - (sub_85a93715 * sub_2280af7a))
    revert
}

function sub_e3162651(?) {
    require block.number >= sub_01f64398
    if not sub_0ce7bb35:
        if sub_29013659 >= sub_29013659:
            return sub_29013659
    else:
        if sub_0ce7bb35:
            if (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35) / sub_0ce7bb35 == block.number - sub_01f64398:
                if (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35) < 0:
                    if sub_29013659 + (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35) < sub_29013659:
                        return (sub_29013659 + (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35))
                else:
                    if sub_29013659 + (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35) >= sub_29013659:
                        return (sub_29013659 + (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35))
                    if (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35) < 0:
                        if sub_29013659 + (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35) < sub_29013659:
                            return (sub_29013659 + (block.number * sub_0ce7bb35) - (sub_01f64398 * sub_0ce7bb35))
    revert
}



}
