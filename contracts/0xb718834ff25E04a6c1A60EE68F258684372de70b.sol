contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    Mask(96, 0, stor0.field_160) = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    require not msg.value
    return code.data[191 len 7228]
}



// =====================  Runtime code  =====================


const name = 'POW Token'

const decimals = 18

const symbol = 'POW'


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalContribution;
uint256 totalBonusTokensIssued;
uint256 totalSupply;
uint256 sub_b8ae0185;
uint256 sub_dd84eaa1;
uint256 sub_bd83b8cb;
uint256 sub_615f79a6;
uint256 sub_56e07c21;
uint256 sub_e92a1e18;
uint256 sub_017f7320;
uint256 sub_9a44fdd2;
uint256 sub_d70bbb98;
uint256 sub_104d9ebf;
uint256 sub_45ee6e62;

function sub_017f7320(?) {
    return sub_017f7320
}

function totalContribution() {
    return totalContribution
}

function sub_104d9ebf(?) {
    return sub_104d9ebf
}

function totalSupply() {
    return totalSupply
}

function sub_45ee6e62(?) {
    return sub_45ee6e62
}

function sub_56e07c21(?) {
    return sub_56e07c21
}

function sub_615f79a6(?) {
    return sub_615f79a6
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalBonusTokensIssued() {
    return totalBonusTokensIssued
}

function sub_9a44fdd2(?) {
    return sub_9a44fdd2
}

function sub_b8ae0185(?) {
    return sub_b8ae0185
}

function sub_bd83b8cb(?) {
    return sub_bd83b8cb
}

function sub_d70bbb98(?) {
    return sub_d70bbb98
}

function purchasingAllowed() {
    return bool(uint8(stor0.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_dd84eaa1(?) {
    return sub_dd84eaa1
}

function sub_e92a1e18(?) {
    return sub_e92a1e18
}

function enablePurchasing() {
    require msg.sender == address(stor0.field_0)
    Mask(96, 0, stor0.field_160) = 1
}

function disablePurchasing() {
    require msg.sender == address(stor0.field_0)
    Mask(96, 0, stor0.field_160) = 0
}

function getStats() {
    return totalContribution, totalSupply, totalBonusTokensIssued, bool(uint8(stor0.field_160))
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if not arg2:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require msg.sender == address(stor0.field_0)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor0.field_0), ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if not arg3:
        return 0
    if balanceOf[address(arg1)] > arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] > arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require uint8(stor0.field_160)
    call address(stor0.field_0) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    totalContribution += msg.value
    if totalSupply < 10^10:
        if address(stor0.field_0) != msg.sender:
            if sub_b8ae0185 >= 3333333:
                emit Transfer(0, this.address, msg.sender);
            else:
                sub_b8ae0185 += 10^9 * msg.value
                totalSupply += 10^9 * msg.value
                balanceOf[address(msg.sender)] += 10^9 * msg.value
                emit Transfer((10^9 * msg.value), this.address, msg.sender);
        else:
            if msg.value:
                if sub_b8ae0185 >= 3333333:
                    emit Transfer(0, this.address, msg.sender);
                else:
                    sub_b8ae0185 += 10^9 * msg.value
                    totalSupply += 10^9 * msg.value
                    balanceOf[address(msg.sender)] += 10^9 * msg.value
                    emit Transfer((10^9 * msg.value), this.address, msg.sender);
            else:
                if sub_b8ae0185 >= 3333333:
                    sub_b8ae0185 += 10^10
                    totalSupply += 10^10
                    balanceOf[address(msg.sender)] += 10^10
                    emit Transfer(10^10, this.address, msg.sender);
                else:
                    sub_b8ae0185 += 10^9 * msg.value
                    totalSupply += 10^9 * msg.value
                    balanceOf[address(msg.sender)] += 10^9 * msg.value
                    emit Transfer((10^9 * msg.value), this.address, msg.sender);
    else:
        if totalSupply < 2 * 10^10:
            if address(stor0.field_0) != msg.sender:
                if sub_dd84eaa1 >= 6410256:
                    emit Transfer(0, this.address, msg.sender);
                else:
                    sub_dd84eaa1 += 192307692 * msg.value
                    totalSupply += 192307692 * msg.value
                    balanceOf[address(msg.sender)] += 192307692 * msg.value
                    emit Transfer((192307692 * msg.value), this.address, msg.sender);
            else:
                if msg.value:
                    if sub_dd84eaa1 >= 6410256:
                        emit Transfer(0, this.address, msg.sender);
                    else:
                        sub_dd84eaa1 += 192307692 * msg.value
                        totalSupply += 192307692 * msg.value
                        balanceOf[address(msg.sender)] += 192307692 * msg.value
                        emit Transfer((192307692 * msg.value), this.address, msg.sender);
                else:
                    if sub_dd84eaa1 >= 6410256:
                        sub_dd84eaa1 += 10^9
                        totalSupply += 10^9
                        balanceOf[address(msg.sender)] += 10^9
                        emit Transfer(10^9, this.address, msg.sender);
                    else:
                        sub_dd84eaa1 += 192307692 * msg.value
                        totalSupply += 192307692 * msg.value
                        balanceOf[address(msg.sender)] += 192307692 * msg.value
                        emit Transfer((192307692 * msg.value), this.address, msg.sender);
        else:
            if totalSupply < 3 * 10^10:
                if address(stor0.field_0) != msg.sender:
                    if sub_bd83b8cb >= 12327416:
                        emit Transfer(0, this.address, msg.sender);
                    else:
                        sub_bd83b8cb += 36982249 * msg.value
                        totalSupply += 36982249 * msg.value
                        balanceOf[address(msg.sender)] += 36982249 * msg.value
                        emit Transfer((36982249 * msg.value), this.address, msg.sender);
                else:
                    if msg.value:
                        if sub_bd83b8cb >= 12327416:
                            emit Transfer(0, this.address, msg.sender);
                        else:
                            sub_bd83b8cb += 36982249 * msg.value
                            totalSupply += 36982249 * msg.value
                            balanceOf[address(msg.sender)] += 36982249 * msg.value
                            emit Transfer((36982249 * msg.value), this.address, msg.sender);
                    else:
                        if sub_bd83b8cb >= 12327416:
                            sub_bd83b8cb += 100 * 10^6
                            totalSupply += 100 * 10^6
                            balanceOf[address(msg.sender)] += 100 * 10^6
                            emit Transfer(100 * 10^6, this.address, msg.sender);
                        else:
                            sub_bd83b8cb += 36982249 * msg.value
                            totalSupply += 36982249 * msg.value
                            balanceOf[address(msg.sender)] += 36982249 * msg.value
                            emit Transfer((36982249 * msg.value), this.address, msg.sender);
            else:
                if totalSupply < 4 * 10^10:
                    if address(stor0.field_0) != msg.sender:
                        if sub_615f79a6 >= 23706570:
                            emit Transfer(0, this.address, msg.sender);
                        else:
                            sub_615f79a6 += 7111971 * msg.value
                            totalSupply += 7111971 * msg.value
                            balanceOf[address(msg.sender)] += 7111971 * msg.value
                            emit Transfer((7111971 * msg.value), this.address, msg.sender);
                    else:
                        if msg.value:
                            if sub_615f79a6 >= 23706570:
                                emit Transfer(0, this.address, msg.sender);
                            else:
                                sub_615f79a6 += 7111971 * msg.value
                                totalSupply += 7111971 * msg.value
                                balanceOf[address(msg.sender)] += 7111971 * msg.value
                                emit Transfer((7111971 * msg.value), this.address, msg.sender);
                        else:
                            if sub_615f79a6 >= 23706570:
                                sub_615f79a6 += 10 * 10^6
                                totalSupply += 10 * 10^6
                                balanceOf[address(msg.sender)] += 10 * 10^6
                                emit Transfer(10 * 10^6, this.address, msg.sender);
                            else:
                                sub_615f79a6 += 7111971 * msg.value
                                totalSupply += 7111971 * msg.value
                                balanceOf[address(msg.sender)] += 7111971 * msg.value
                                emit Transfer((7111971 * msg.value), this.address, msg.sender);
                else:
                    if totalSupply < 5 * 10^10:
                        if address(stor0.field_0) != msg.sender:
                            if sub_56e07c21 >= 45589557:
                                emit Transfer(0, this.address, msg.sender);
                            else:
                                sub_56e07c21 += 1367687 * msg.value
                                totalSupply += 1367687 * msg.value
                                balanceOf[address(msg.sender)] += 1367687 * msg.value
                                emit Transfer((1367687 * msg.value), this.address, msg.sender);
                        else:
                            if msg.value:
                                if sub_56e07c21 >= 45589557:
                                    emit Transfer(0, this.address, msg.sender);
                                else:
                                    sub_56e07c21 += 1367687 * msg.value
                                    totalSupply += 1367687 * msg.value
                                    balanceOf[address(msg.sender)] += 1367687 * msg.value
                                    emit Transfer((1367687 * msg.value), this.address, msg.sender);
                            else:
                                if sub_56e07c21 >= 45589557:
                                    sub_56e07c21 += 10^6
                                    totalSupply += 10^6
                                    balanceOf[address(msg.sender)] += 10^6
                                    emit Transfer(10^6, this.address, msg.sender);
                                else:
                                    sub_56e07c21 += 1367687 * msg.value
                                    totalSupply += 1367687 * msg.value
                                    balanceOf[address(msg.sender)] += 1367687 * msg.value
                                    emit Transfer((1367687 * msg.value), this.address, msg.sender);
                    else:
                        if totalSupply < 6 * 10^10:
                            if address(stor0.field_0) != msg.sender:
                                if sub_e92a1e18 >= 87672225:
                                    emit Transfer(0, this.address, msg.sender);
                                else:
                                    sub_e92a1e18 += 263017 * msg.value
                                    totalSupply += 263017 * msg.value
                                    balanceOf[address(msg.sender)] += 263017 * msg.value
                                    emit Transfer((263017 * msg.value), this.address, msg.sender);
                            else:
                                if msg.value:
                                    if sub_e92a1e18 >= 87672225:
                                        emit Transfer(0, this.address, msg.sender);
                                    else:
                                        sub_e92a1e18 += 263017 * msg.value
                                        totalSupply += 263017 * msg.value
                                        balanceOf[address(msg.sender)] += 263017 * msg.value
                                        emit Transfer((263017 * msg.value), this.address, msg.sender);
                                else:
                                    if sub_e92a1e18 >= 87672225:
                                        sub_e92a1e18 += 100000
                                        totalSupply += 100000
                                        balanceOf[address(msg.sender)] += 100000
                                        emit Transfer(100000, this.address, msg.sender);
                                    else:
                                        sub_e92a1e18 += 263017 * msg.value
                                        totalSupply += 263017 * msg.value
                                        balanceOf[address(msg.sender)] += 263017 * msg.value
                                        emit Transfer((263017 * msg.value), this.address, msg.sender);
                        else:
                            if totalSupply < 7 * 10^10:
                                if address(stor0.field_0) != msg.sender:
                                    if sub_017f7320 >= 168600432:
                                        emit Transfer(0, this.address, msg.sender);
                                    else:
                                        sub_017f7320 += 50580 * msg.value
                                        totalSupply += 50580 * msg.value
                                        balanceOf[address(msg.sender)] += 50580 * msg.value
                                        emit Transfer((50580 * msg.value), this.address, msg.sender);
                                else:
                                    if msg.value:
                                        if sub_017f7320 >= 168600432:
                                            emit Transfer(0, this.address, msg.sender);
                                        else:
                                            sub_017f7320 += 50580 * msg.value
                                            totalSupply += 50580 * msg.value
                                            balanceOf[address(msg.sender)] += 50580 * msg.value
                                            emit Transfer((50580 * msg.value), this.address, msg.sender);
                                    else:
                                        if sub_017f7320 >= 168600432:
                                            sub_017f7320 += 10000
                                            totalSupply += 10000
                                            balanceOf[address(msg.sender)] += 10000
                                            emit Transfer(10000, this.address, msg.sender);
                                        else:
                                            sub_017f7320 += 50580 * msg.value
                                            totalSupply += 50580 * msg.value
                                            balanceOf[address(msg.sender)] += 50580 * msg.value
                                            emit Transfer((50580 * msg.value), this.address, msg.sender);
                            else:
                                if totalSupply < 8 * 10^10:
                                    if address(stor0.field_0) != msg.sender:
                                        if sub_9a44fdd2 >= 324231600:
                                            emit Transfer(0, this.address, msg.sender);
                                        else:
                                            sub_9a44fdd2 += 9727 * msg.value
                                            totalSupply += 9727 * msg.value
                                            balanceOf[address(msg.sender)] += 9727 * msg.value
                                            emit Transfer((9727 * msg.value), this.address, msg.sender);
                                    else:
                                        if msg.value:
                                            if sub_9a44fdd2 >= 324231600:
                                                emit Transfer(0, this.address, msg.sender);
                                            else:
                                                sub_9a44fdd2 += 9727 * msg.value
                                                totalSupply += 9727 * msg.value
                                                balanceOf[address(msg.sender)] += 9727 * msg.value
                                                emit Transfer((9727 * msg.value), this.address, msg.sender);
                                        else:
                                            if sub_9a44fdd2 >= 324231600:
                                                sub_9a44fdd2 += 1000
                                                totalSupply += 1000
                                                balanceOf[address(msg.sender)] += 1000
                                                emit Transfer(1000, this.address, msg.sender);
                                            else:
                                                sub_9a44fdd2 += 9727 * msg.value
                                                totalSupply += 9727 * msg.value
                                                balanceOf[address(msg.sender)] += 9727 * msg.value
                                                emit Transfer((9727 * msg.value), this.address, msg.sender);
                                else:
                                    if totalSupply < 25 * 10^6 * 3600:
                                        if address(stor0.field_0) != msg.sender:
                                            if sub_d70bbb98 >= 623522308:
                                                emit Transfer(0, this.address, msg.sender);
                                            else:
                                                sub_d70bbb98 += 1871 * msg.value
                                                totalSupply += 1871 * msg.value
                                                balanceOf[address(msg.sender)] += 1871 * msg.value
                                                emit Transfer((1871 * msg.value), this.address, msg.sender);
                                        else:
                                            if msg.value:
                                                if sub_d70bbb98 >= 623522308:
                                                    emit Transfer(0, this.address, msg.sender);
                                                else:
                                                    sub_d70bbb98 += 1871 * msg.value
                                                    totalSupply += 1871 * msg.value
                                                    balanceOf[address(msg.sender)] += 1871 * msg.value
                                                    emit Transfer((1871 * msg.value), this.address, msg.sender);
                                            else:
                                                if sub_d70bbb98 >= 623522308:
                                                    sub_d70bbb98 += 100
                                                    totalSupply += 100
                                                    balanceOf[address(msg.sender)] += 100
                                                    emit Transfer(100, this.address, msg.sender);
                                                else:
                                                    sub_d70bbb98 += 1871 * msg.value
                                                    totalSupply += 1871 * msg.value
                                                    balanceOf[address(msg.sender)] += 1871 * msg.value
                                                    emit Transfer((1871 * msg.value), this.address, msg.sender);
                                    else:
                                        if totalSupply < 10^11:
                                            if address(stor0.field_0) != msg.sender:
                                                if sub_104d9ebf >= 1199081362:
                                                    emit Transfer(0, this.address, msg.sender);
                                                else:
                                                    sub_104d9ebf += 360 * msg.value
                                                    totalSupply += 360 * msg.value
                                                    balanceOf[address(msg.sender)] += 360 * msg.value
                                                    emit Transfer((360 * msg.value), this.address, msg.sender);
                                            else:
                                                if msg.value:
                                                    if sub_104d9ebf >= 1199081362:
                                                        emit Transfer(0, this.address, msg.sender);
                                                    else:
                                                        sub_104d9ebf += 360 * msg.value
                                                        totalSupply += 360 * msg.value
                                                        balanceOf[address(msg.sender)] += 360 * msg.value
                                                        emit Transfer((360 * msg.value), this.address, msg.sender);
                                                else:
                                                    if sub_104d9ebf >= 1199081362:
                                                        sub_104d9ebf += 10
                                                        totalSupply += 10
                                                        balanceOf[address(msg.sender)] += 10
                                                        emit Transfer(10, this.address, msg.sender);
                                                    else:
                                                        sub_104d9ebf += 360 * msg.value
                                                        totalSupply += 360 * msg.value
                                                        balanceOf[address(msg.sender)] += 360 * msg.value
                                                        emit Transfer((360 * msg.value), this.address, msg.sender);
                                        else:
                                            if totalSupply >= 11 * 10^10:
                                                emit Transfer(0, this.address, msg.sender);
                                            else:
                                                if address(stor0.field_0) != msg.sender:
                                                    if sub_45ee6e62 >= 2305925696:
                                                        emit Transfer(0, this.address, msg.sender);
                                                    else:
                                                        sub_45ee6e62 += 69 * msg.value
                                                        totalSupply += 69 * msg.value
                                                        balanceOf[address(msg.sender)] += 69 * msg.value
                                                        emit Transfer((69 * msg.value), this.address, msg.sender);
                                                else:
                                                    if msg.value:
                                                        if sub_45ee6e62 >= 2305925696:
                                                            emit Transfer(0, this.address, msg.sender);
                                                        else:
                                                            sub_45ee6e62 += 69 * msg.value
                                                            totalSupply += 69 * msg.value
                                                            balanceOf[address(msg.sender)] += 69 * msg.value
                                                            emit Transfer((69 * msg.value), this.address, msg.sender);
                                                    else:
                                                        if sub_45ee6e62 >= 2305925696:
                                                            sub_45ee6e62++
                                                            totalSupply++
                                                            balanceOf[address(msg.sender)]++
                                                            emit Transfer(1, this.address, msg.sender);
                                                        else:
                                                            sub_45ee6e62 += 69 * msg.value
                                                            totalSupply += 69 * msg.value
                                                            balanceOf[address(msg.sender)] += 69 * msg.value
                                                            emit Transfer((69 * msg.value), this.address, msg.sender);
}



}
