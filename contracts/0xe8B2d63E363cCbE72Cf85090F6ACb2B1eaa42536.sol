contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_2bbfa6bb(?)
#  - sub_41d7f855(?)
#  - sub_6b75aada(?)
#  - sub_6f85eda7(?)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'WRD Genesis'

const decimals = 8

const sub_83f3ab5b(?) = 7922816251426433759354395

const symbol = 'WRD'

const sub_b07f2bb6(?) = 316912650057057350374175801


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint256 allowance;
uint256 initialSupply;
address sub_b5e6e984Address;
uint256 totalSupply;
uint256 sub_411e0d1c;
uint8 stor7;
uint256 launchTime;
mapping of uint256 stor9;
mapping of struct stor10;
mapping of struct stor11;
mapping of uint256 stor12;
mapping of struct stor13;
mapping of uint256 sub_327ac1a0;
uint256 sub_f12ee277;
uint256 sub_5a453c1f;

function totalSupply() {
    return totalSupply
}

function sub_327ac1a0(?) {
    require calldata.size - 4 >= 32
    return sub_327ac1a0[arg1]
}

function initialSupply() {
    return initialSupply
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function sub_411e0d1c(?) {
    return sub_411e0d1c
}

function sub_5a453c1f(?) {
    return sub_5a453c1f
}

function launchTime() {
    return launchTime
}

function sub_b5e6e984(?) {
    return sub_b5e6e984Address
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function listing() {
    return bool(stor7)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_f12ee277(?) {
    return sub_f12ee277
}

function _fallback() payable {
    revert
}

function startListing() {
    require msg.sender
    require stor0[address(msg.sender)]
    require not stor7
    launchTime = block.timestamp
    stor7 = 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_6c295813(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_b5e6e984Address
    require arg2 + stor12[address(arg1)] >= stor12[address(arg1)]
    stor12[address(arg1)] += arg2
    require arg2 + sub_411e0d1c >= sub_411e0d1c
    sub_411e0d1c += arg2
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_23048db9(?) {
    require calldata.size - 4 >= 32
    require arg1
    if stor0[address(arg1)]:
        require stor12[address(arg1)] >= stor12[address(arg1)]
        return stor12[address(arg1)]
    require arg1
    if stor1[address(arg1)]:
        require stor12[address(arg1)] >= stor12[address(arg1)]
        return stor12[address(arg1)]
    if not stor7:
        require stor12[address(arg1)] >= stor12[address(arg1)]
        return stor12[address(arg1)]
    if not stor9[address(arg1)]:
        require launchTime >= 0
        require launchTime <= block.timestamp
        if not block.timestamp - launchTime / 24 * 3600:
            require stor12[address(arg1)] >= stor12[address(arg1)]
            return stor12[address(arg1)]
        s = 0x1000000000000000000000000
        idx = (block.timestamp - launchTime / 24 * 3600) - 1
        t = 0x1002972d7d385b457c50c19c8
        while idx > 0:
            if bool(idx) <= 0:
                s = s
                idx = idx / 2
                t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                continue 
            s = (Mask(161, 95, s * t) >> 95) + 1 / 2
            idx = idx / 2
            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
            continue 
        t = 0x1000000000000000000000000
        idx = (block.timestamp - launchTime / 24 * 3600) - 1
        u = 0xffd68d282c7a4ba83af3e638
        while idx > 0:
            if bool(idx) <= 0:
                t = t
                idx = idx / 2
                u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                continue 
            t = (Mask(161, 95, t * u) >> 95) + 1 / 2
            idx = idx / 2
            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
            continue 
    else:
        require 24 * 3600 * stor9[address(arg1)] / stor9[address(arg1)] == 24 * 3600
        require launchTime + (24 * 3600 * stor9[address(arg1)]) >= 24 * 3600 * stor9[address(arg1)]
        require launchTime + (24 * 3600 * stor9[address(arg1)]) <= block.timestamp
        if not block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600:
            require stor12[address(arg1)] >= stor12[address(arg1)]
            return stor12[address(arg1)]
        s = 0x1000000000000000000000000
        idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
        t = 0x1002972d7d385b457c50c19c8
        while idx > 0:
            if bool(idx) <= 0:
                s = s
                idx = idx / 2
                t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                continue 
            s = (Mask(161, 95, s * t) >> 95) + 1 / 2
            idx = idx / 2
            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
            continue 
        t = 0x1000000000000000000000000
        idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
        u = 0xffd68d282c7a4ba83af3e638
        while idx > 0:
            if bool(idx) <= 0:
                t = t
                idx = idx / 2
                u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                continue 
            t = (Mask(161, 95, t * u) >> 95) + 1 / 2
            idx = idx / 2
            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
            continue 
    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(arg1)]
    return (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    if stor0[address(arg1)]:
        require launchTime + (8640 * 24 * 3600) >= launchTime
        if block.timestamp < launchTime + (8640 * 24 * 3600):
            if not sub_327ac1a0[address(arg1)]:
                require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                require 0 <= stor10[address(arg1)].field_0
                return stor10[address(arg1)].field_0
            require 100 * sub_327ac1a0[address(arg1)] / sub_327ac1a0[address(arg1)] == 100
            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
            require 100 * sub_327ac1a0[address(arg1)] / 100 <= stor10[address(arg1)].field_0
            return (stor10[address(arg1)].field_0 - (100 * sub_327ac1a0[address(arg1)] / 100))
        require launchTime + (8640 * 24 * 3600) >= launchTime
        require launchTime + (8640 * 24 * 3600) <= block.timestamp
        if block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 >= 50:
            if sub_327ac1a0[address(arg1)]:
                require not 0 / sub_327ac1a0[address(arg1)]
            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
            require 0 <= stor10[address(arg1)].field_0
            return stor10[address(arg1)].field_0
        require uint255(block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600) == block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600
        require 2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 <= 100
        if not sub_327ac1a0[address(arg1)]:
            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
            require 0 <= stor10[address(arg1)].field_0
            return stor10[address(arg1)].field_0
        require (100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / sub_327ac1a0[address(arg1)] == -(2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600) + 100
        require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
        require (100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / 100 <= stor10[address(arg1)].field_0
        return (stor10[address(arg1)].field_0 - ((100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / 100))
    require arg1
    if stor1[address(arg1)]:
        require launchTime + (8640 * 24 * 3600) >= launchTime
        if block.timestamp < launchTime + (8640 * 24 * 3600):
            if not sub_327ac1a0[address(arg1)]:
                require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                require 0 <= stor10[address(arg1)].field_0
                return stor10[address(arg1)].field_0
            require 100 * sub_327ac1a0[address(arg1)] / sub_327ac1a0[address(arg1)] == 100
            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
            require 100 * sub_327ac1a0[address(arg1)] / 100 <= stor10[address(arg1)].field_0
            return (stor10[address(arg1)].field_0 - (100 * sub_327ac1a0[address(arg1)] / 100))
        require launchTime + (8640 * 24 * 3600) >= launchTime
        require launchTime + (8640 * 24 * 3600) <= block.timestamp
        if block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 >= 50:
            if sub_327ac1a0[address(arg1)]:
                require not 0 / sub_327ac1a0[address(arg1)]
            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
            require 0 <= stor10[address(arg1)].field_0
            return stor10[address(arg1)].field_0
        require uint255(block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600) == block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600
        require 2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 <= 100
        if not sub_327ac1a0[address(arg1)]:
            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
            require 0 <= stor10[address(arg1)].field_0
            return stor10[address(arg1)].field_0
        require (100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / sub_327ac1a0[address(arg1)] == -(2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600) + 100
        require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
        require (100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / 100 <= stor10[address(arg1)].field_0
        return (stor10[address(arg1)].field_0 - ((100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / 100))
    if not stor7:
        require launchTime + (8640 * 24 * 3600) >= launchTime
        if block.timestamp < launchTime + (8640 * 24 * 3600):
            if not sub_327ac1a0[address(arg1)]:
                require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                require 0 <= stor10[address(arg1)].field_0
                return stor10[address(arg1)].field_0
            require 100 * sub_327ac1a0[address(arg1)] / sub_327ac1a0[address(arg1)] == 100
            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
            require 100 * sub_327ac1a0[address(arg1)] / 100 <= stor10[address(arg1)].field_0
            return (stor10[address(arg1)].field_0 - (100 * sub_327ac1a0[address(arg1)] / 100))
        require launchTime + (8640 * 24 * 3600) >= launchTime
        require launchTime + (8640 * 24 * 3600) <= block.timestamp
        if block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 >= 50:
            if sub_327ac1a0[address(arg1)]:
                require not 0 / sub_327ac1a0[address(arg1)]
            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
            require 0 <= stor10[address(arg1)].field_0
            return stor10[address(arg1)].field_0
        require uint255(block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600) == block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600
        require 2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 <= 100
        if not sub_327ac1a0[address(arg1)]:
            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
            require 0 <= stor10[address(arg1)].field_0
            return stor10[address(arg1)].field_0
        require (100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / sub_327ac1a0[address(arg1)] == -(2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600) + 100
        require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
        require (100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / 100 <= stor10[address(arg1)].field_0
        return (stor10[address(arg1)].field_0 - ((100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / 100))
    if not stor9[address(arg1)]:
        require launchTime >= 0
        require launchTime <= block.timestamp
        if not block.timestamp - launchTime / 24 * 3600:
            require launchTime + (8640 * 24 * 3600) >= launchTime
            if block.timestamp < launchTime + (8640 * 24 * 3600):
                if not sub_327ac1a0[address(arg1)]:
                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                    require 0 <= stor10[address(arg1)].field_0
                    return stor10[address(arg1)].field_0
                require 100 * sub_327ac1a0[address(arg1)] / sub_327ac1a0[address(arg1)] == 100
                require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                require 100 * sub_327ac1a0[address(arg1)] / 100 <= stor10[address(arg1)].field_0
                return (stor10[address(arg1)].field_0 - (100 * sub_327ac1a0[address(arg1)] / 100))
            require launchTime + (8640 * 24 * 3600) >= launchTime
            require launchTime + (8640 * 24 * 3600) <= block.timestamp
            if block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 >= 50:
                if sub_327ac1a0[address(arg1)]:
                    require not 0 / sub_327ac1a0[address(arg1)]
                require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                require 0 <= stor10[address(arg1)].field_0
                return stor10[address(arg1)].field_0
            require uint255(block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600) == block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600
            require 2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 <= 100
            if not sub_327ac1a0[address(arg1)]:
                require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                require 0 <= stor10[address(arg1)].field_0
                return stor10[address(arg1)].field_0
            require (100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / sub_327ac1a0[address(arg1)] == -(2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600) + 100
            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
            require (100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / 100 <= stor10[address(arg1)].field_0
            return (stor10[address(arg1)].field_0 - ((100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / 100))
        s = 0x1000000000000000000000000
        idx = (block.timestamp - launchTime / 24 * 3600) - 1
        t = 0x1002972d7d385b457c50c19c8
        while idx > 0:
            if bool(idx) <= 0:
                s = s
                idx = idx / 2
                t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                continue 
            s = (Mask(161, 95, s * t) >> 95) + 1 / 2
            idx = idx / 2
            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
            continue 
        t = 0x1000000000000000000000000
        idx = (block.timestamp - launchTime / 24 * 3600) - 1
        u = 0xffd68d282c7a4ba83af3e638
        while idx > 0:
            if bool(idx) <= 0:
                t = t
                idx = idx / 2
                u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                continue 
            t = (Mask(161, 95, t * u) >> 95) + 1 / 2
            idx = idx / 2
            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
            continue 
    else:
        require 24 * 3600 * stor9[address(arg1)] / stor9[address(arg1)] == 24 * 3600
        require launchTime + (24 * 3600 * stor9[address(arg1)]) >= 24 * 3600 * stor9[address(arg1)]
        require launchTime + (24 * 3600 * stor9[address(arg1)]) <= block.timestamp
        if not block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600:
            require launchTime + (8640 * 24 * 3600) >= launchTime
            if block.timestamp < launchTime + (8640 * 24 * 3600):
                if not sub_327ac1a0[address(arg1)]:
                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                    require 0 <= stor10[address(arg1)].field_0
                    return stor10[address(arg1)].field_0
                require 100 * sub_327ac1a0[address(arg1)] / sub_327ac1a0[address(arg1)] == 100
                require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                require 100 * sub_327ac1a0[address(arg1)] / 100 <= stor10[address(arg1)].field_0
                return (stor10[address(arg1)].field_0 - (100 * sub_327ac1a0[address(arg1)] / 100))
            require launchTime + (8640 * 24 * 3600) >= launchTime
            require launchTime + (8640 * 24 * 3600) <= block.timestamp
            if block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 >= 50:
                if sub_327ac1a0[address(arg1)]:
                    require not 0 / sub_327ac1a0[address(arg1)]
                require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                require 0 <= stor10[address(arg1)].field_0
                return stor10[address(arg1)].field_0
            require uint255(block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600) == block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600
            require 2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 <= 100
            if not sub_327ac1a0[address(arg1)]:
                require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                require 0 <= stor10[address(arg1)].field_0
                return stor10[address(arg1)].field_0
            require (100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / sub_327ac1a0[address(arg1)] == -(2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600) + 100
            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
            require (100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / 100 <= stor10[address(arg1)].field_0
            return (stor10[address(arg1)].field_0 - ((100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / 100))
        s = 0x1000000000000000000000000
        idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
        t = 0x1002972d7d385b457c50c19c8
        while idx > 0:
            if bool(idx) <= 0:
                s = s
                idx = idx / 2
                t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                continue 
            s = (Mask(161, 95, s * t) >> 95) + 1 / 2
            idx = idx / 2
            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
            continue 
        t = 0x1000000000000000000000000
        idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
        u = 0xffd68d282c7a4ba83af3e638
        while idx > 0:
            if bool(idx) <= 0:
                t = t
                idx = idx / 2
                u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                continue 
            t = (Mask(161, 95, t * u) >> 95) + 1 / 2
            idx = idx / 2
            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
            continue 
    require launchTime + (8640 * 24 * 3600) >= launchTime
    if block.timestamp < launchTime + (8640 * 24 * 3600):
        if not sub_327ac1a0[address(arg1)]:
            require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
            require 0 <= ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
            return (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2)
        require 100 * sub_327ac1a0[address(arg1)] / sub_327ac1a0[address(arg1)] == 100
        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
        require 100 * sub_327ac1a0[address(arg1)] / 100 <= ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
        return ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - (100 * sub_327ac1a0[address(arg1)] / 100))
    require launchTime + (8640 * 24 * 3600) >= launchTime
    require launchTime + (8640 * 24 * 3600) <= block.timestamp
    if block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 >= 50:
        if sub_327ac1a0[address(arg1)]:
            require not 0 / sub_327ac1a0[address(arg1)]
        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
        require 0 <= ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
        return (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2)
    require uint255(block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600) == block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600
    require 2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 <= 100
    if not sub_327ac1a0[address(arg1)]:
        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
        require 0 <= ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
        return (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2)
    require (100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / sub_327ac1a0[address(arg1)] == -(2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600) + 100
    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
    require (100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / 100 <= ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
    return ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - ((100 * sub_327ac1a0[address(arg1)]) - (2 * block.timestamp + -launchTime - (8640 * 24 * 3600) / 720 * 24 * 3600 * sub_327ac1a0[address(arg1)]) / 100))
}

function addWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    if stor7:
        if not stor9[address(arg1)]:
            require launchTime >= 0
            require launchTime <= block.timestamp
            if block.timestamp - launchTime / 24 * 3600 > 0:
                require arg1
                if stor0[address(arg1)]:
                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                    require stor12[address(arg1)] >= stor12[address(arg1)]
                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                else:
                    require arg1
                    if stor1[address(arg1)]:
                        require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                        stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                        require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                        stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                        require stor12[address(arg1)] >= stor12[address(arg1)]
                        stor13[address(arg1)].field_0 = stor12[address(arg1)]
                    else:
                        if not stor7:
                            require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                            stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                            stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                            require stor12[address(arg1)] >= stor12[address(arg1)]
                            stor13[address(arg1)].field_0 = stor12[address(arg1)]
                        else:
                            if not stor9[address(arg1)]:
                                require launchTime >= 0
                                require launchTime <= block.timestamp
                                if not block.timestamp - launchTime / 24 * 3600:
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                                    require stor12[address(arg1)] >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(arg1)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(arg1)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                        stor10[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(arg1)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0), 0, arg1
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 24 * 3600 * stor9[address(arg1)] / stor9[address(arg1)] == 24 * 3600
                                require launchTime + (24 * 3600 * stor9[address(arg1)]) >= 24 * 3600 * stor9[address(arg1)]
                                require launchTime + (24 * 3600 * stor9[address(arg1)]) <= block.timestamp
                                if not block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600:
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                                    require stor12[address(arg1)] >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(arg1)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(arg1)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                        stor10[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(arg1)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0), 0, arg1
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
        else:
            require 24 * 3600 * stor9[address(arg1)] / stor9[address(arg1)] == 24 * 3600
            require launchTime + (24 * 3600 * stor9[address(arg1)]) >= 24 * 3600 * stor9[address(arg1)]
            require launchTime + (24 * 3600 * stor9[address(arg1)]) <= block.timestamp
            if block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600 > 0:
                require arg1
                if stor0[address(arg1)]:
                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                    require stor12[address(arg1)] >= stor12[address(arg1)]
                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                else:
                    require arg1
                    if stor1[address(arg1)]:
                        require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                        stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                        require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                        stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                        require stor12[address(arg1)] >= stor12[address(arg1)]
                        stor13[address(arg1)].field_0 = stor12[address(arg1)]
                    else:
                        if not stor7:
                            require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                            stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                            stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                            require stor12[address(arg1)] >= stor12[address(arg1)]
                            stor13[address(arg1)].field_0 = stor12[address(arg1)]
                        else:
                            if not stor9[address(arg1)]:
                                require launchTime >= 0
                                require launchTime <= block.timestamp
                                if not block.timestamp - launchTime / 24 * 3600:
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                                    require stor12[address(arg1)] >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(arg1)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(arg1)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                        stor10[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(arg1)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0), 0, arg1
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 24 * 3600 * stor9[address(arg1)] / stor9[address(arg1)] == 24 * 3600
                                require launchTime + (24 * 3600 * stor9[address(arg1)]) >= 24 * 3600 * stor9[address(arg1)]
                                require launchTime + (24 * 3600 * stor9[address(arg1)]) <= block.timestamp
                                if not block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600:
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                                    require stor12[address(arg1)] >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(arg1)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(arg1)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                        stor10[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(arg1)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0), 0, arg1
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function removeWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    if stor7:
        if not stor9[address(arg1)]:
            require launchTime >= 0
            require launchTime <= block.timestamp
            if block.timestamp - launchTime / 24 * 3600 > 0:
                require arg1
                if stor0[address(arg1)]:
                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                    require stor12[address(arg1)] >= stor12[address(arg1)]
                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                else:
                    require arg1
                    if stor1[address(arg1)]:
                        require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                        stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                        require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                        stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                        require stor12[address(arg1)] >= stor12[address(arg1)]
                        stor13[address(arg1)].field_0 = stor12[address(arg1)]
                    else:
                        if not stor7:
                            require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                            stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                            stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                            require stor12[address(arg1)] >= stor12[address(arg1)]
                            stor13[address(arg1)].field_0 = stor12[address(arg1)]
                        else:
                            if not stor9[address(arg1)]:
                                require launchTime >= 0
                                require launchTime <= block.timestamp
                                if not block.timestamp - launchTime / 24 * 3600:
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                                    require stor12[address(arg1)] >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(arg1)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(arg1)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                        stor10[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(arg1)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0), 0, arg1
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 24 * 3600 * stor9[address(arg1)] / stor9[address(arg1)] == 24 * 3600
                                require launchTime + (24 * 3600 * stor9[address(arg1)]) >= 24 * 3600 * stor9[address(arg1)]
                                require launchTime + (24 * 3600 * stor9[address(arg1)]) <= block.timestamp
                                if not block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600:
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                                    require stor12[address(arg1)] >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(arg1)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(arg1)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                        stor10[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(arg1)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0), 0, arg1
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
        else:
            require 24 * 3600 * stor9[address(arg1)] / stor9[address(arg1)] == 24 * 3600
            require launchTime + (24 * 3600 * stor9[address(arg1)]) >= 24 * 3600 * stor9[address(arg1)]
            require launchTime + (24 * 3600 * stor9[address(arg1)]) <= block.timestamp
            if block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600 > 0:
                require arg1
                if stor0[address(arg1)]:
                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                    require stor12[address(arg1)] >= stor12[address(arg1)]
                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                else:
                    require arg1
                    if stor1[address(arg1)]:
                        require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                        stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                        require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                        stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                        require stor12[address(arg1)] >= stor12[address(arg1)]
                        stor13[address(arg1)].field_0 = stor12[address(arg1)]
                    else:
                        if not stor7:
                            require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                            stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                            stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                            require stor12[address(arg1)] >= stor12[address(arg1)]
                            stor13[address(arg1)].field_0 = stor12[address(arg1)]
                        else:
                            if not stor9[address(arg1)]:
                                require launchTime >= 0
                                require launchTime <= block.timestamp
                                if not block.timestamp - launchTime / 24 * 3600:
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                                    require stor12[address(arg1)] >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(arg1)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(arg1)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                        stor10[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(arg1)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0), 0, arg1
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 24 * 3600 * stor9[address(arg1)] / stor9[address(arg1)] == 24 * 3600
                                require launchTime + (24 * 3600 * stor9[address(arg1)]) >= 24 * 3600 * stor9[address(arg1)]
                                require launchTime + (24 * 3600 * stor9[address(arg1)]) <= block.timestamp
                                if not block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600:
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                                    require stor12[address(arg1)] >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(arg1)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(arg1)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                        stor10[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(arg1)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0), 0, arg1
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    if stor7:
        if not stor9[address(arg1)]:
            require launchTime >= 0
            require launchTime <= block.timestamp
            if block.timestamp - launchTime / 24 * 3600 > 0:
                require arg1
                if stor0[address(arg1)]:
                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                    require stor12[address(arg1)] >= stor12[address(arg1)]
                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                else:
                    require arg1
                    if stor1[address(arg1)]:
                        require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                        stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                        require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                        stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                        require stor12[address(arg1)] >= stor12[address(arg1)]
                        stor13[address(arg1)].field_0 = stor12[address(arg1)]
                    else:
                        if not stor7:
                            require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                            stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                            stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                            require stor12[address(arg1)] >= stor12[address(arg1)]
                            stor13[address(arg1)].field_0 = stor12[address(arg1)]
                        else:
                            if not stor9[address(arg1)]:
                                require launchTime >= 0
                                require launchTime <= block.timestamp
                                if not block.timestamp - launchTime / 24 * 3600:
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                                    require stor12[address(arg1)] >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(arg1)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(arg1)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                        stor10[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(arg1)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0), 0, arg1
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 24 * 3600 * stor9[address(arg1)] / stor9[address(arg1)] == 24 * 3600
                                require launchTime + (24 * 3600 * stor9[address(arg1)]) >= 24 * 3600 * stor9[address(arg1)]
                                require launchTime + (24 * 3600 * stor9[address(arg1)]) <= block.timestamp
                                if not block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600:
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                                    require stor12[address(arg1)] >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(arg1)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(arg1)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                        stor10[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(arg1)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0), 0, arg1
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
        else:
            require 24 * 3600 * stor9[address(arg1)] / stor9[address(arg1)] == 24 * 3600
            require launchTime + (24 * 3600 * stor9[address(arg1)]) >= 24 * 3600 * stor9[address(arg1)]
            require launchTime + (24 * 3600 * stor9[address(arg1)]) <= block.timestamp
            if block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600 > 0:
                require arg1
                if stor0[address(arg1)]:
                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                    require stor12[address(arg1)] >= stor12[address(arg1)]
                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                else:
                    require arg1
                    if stor1[address(arg1)]:
                        require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                        stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                        require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                        stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                        require stor12[address(arg1)] >= stor12[address(arg1)]
                        stor13[address(arg1)].field_0 = stor12[address(arg1)]
                    else:
                        if not stor7:
                            require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                            stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                            require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                            stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                            require stor12[address(arg1)] >= stor12[address(arg1)]
                            stor13[address(arg1)].field_0 = stor12[address(arg1)]
                        else:
                            if not stor9[address(arg1)]:
                                require launchTime >= 0
                                require launchTime <= block.timestamp
                                if not block.timestamp - launchTime / 24 * 3600:
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                                    require stor12[address(arg1)] >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(arg1)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(arg1)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                        stor10[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(arg1)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0), 0, arg1
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 24 * 3600 * stor9[address(arg1)] / stor9[address(arg1)] == 24 * 3600
                                require launchTime + (24 * 3600 * stor9[address(arg1)]) >= 24 * 3600 * stor9[address(arg1)]
                                require launchTime + (24 * 3600 * stor9[address(arg1)]) <= block.timestamp
                                if not block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600:
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                                    require stor10[address(arg1)].field_0 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = stor10[address(arg1)].field_0
                                    require stor12[address(arg1)] >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = stor12[address(arg1)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600) + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor9[address(arg1)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(arg1)]) / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                    stor11[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(arg1)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(arg1)]
                                    stor13[address(arg1)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(arg1)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(arg1)].field_0
                                        stor10[address(arg1)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(arg1)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(arg1)].field_0), 0, arg1
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(arg1)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(arg1)].field_0) + (s * stor10[address(arg1)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(arg1)]) + (s * stor12[address(arg1)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(arg1)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(arg1)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function renounceWhitelisted() {
    if stor7:
        if not stor9[address(msg.sender)]:
            require launchTime >= 0
            require launchTime <= block.timestamp
            if block.timestamp - launchTime / 24 * 3600 > 0:
                require msg.sender
                if stor0[address(msg.sender)]:
                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                    stor9[address(msg.sender)] += block.timestamp - launchTime / 24 * 3600
                    require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                    stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                    require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                    stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                else:
                    require msg.sender
                    if stor1[address(msg.sender)]:
                        require (block.timestamp - launchTime / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                        stor9[address(msg.sender)] += block.timestamp - launchTime / 24 * 3600
                        require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                        stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                        require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                        stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                    else:
                        if not stor7:
                            require (block.timestamp - launchTime / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                            stor9[address(msg.sender)] += block.timestamp - launchTime / 24 * 3600
                            require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                            stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                            require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                            stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                        else:
                            if not stor9[address(msg.sender)]:
                                require launchTime >= 0
                                require launchTime <= block.timestamp
                                if not block.timestamp - launchTime / 24 * 3600:
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime / 24 * 3600
                                    require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                                    require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(msg.sender)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(msg.sender)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                        stor10[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(msg.sender)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0), 0, msg.sender
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 24 * 3600 * stor9[address(msg.sender)] / stor9[address(msg.sender)] == 24 * 3600
                                require launchTime + (24 * 3600 * stor9[address(msg.sender)]) >= 24 * 3600 * stor9[address(msg.sender)]
                                require launchTime + (24 * 3600 * stor9[address(msg.sender)]) <= block.timestamp
                                if not block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600:
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime / 24 * 3600
                                    require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                                    require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(msg.sender)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(msg.sender)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                        stor10[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(msg.sender)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0), 0, msg.sender
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
        else:
            require 24 * 3600 * stor9[address(msg.sender)] / stor9[address(msg.sender)] == 24 * 3600
            require launchTime + (24 * 3600 * stor9[address(msg.sender)]) >= 24 * 3600 * stor9[address(msg.sender)]
            require launchTime + (24 * 3600 * stor9[address(msg.sender)]) <= block.timestamp
            if block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600 > 0:
                require msg.sender
                if stor0[address(msg.sender)]:
                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                    stor9[address(msg.sender)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600
                    require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                    stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                    require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                    stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                else:
                    require msg.sender
                    if stor1[address(msg.sender)]:
                        require (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                        stor9[address(msg.sender)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600
                        require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                        stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                        require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                        stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                    else:
                        if not stor7:
                            require (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                            stor9[address(msg.sender)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600
                            require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                            stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                            require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                            stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                        else:
                            if not stor9[address(msg.sender)]:
                                require launchTime >= 0
                                require launchTime <= block.timestamp
                                if not block.timestamp - launchTime / 24 * 3600:
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600
                                    require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                                    require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(msg.sender)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(msg.sender)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                        stor10[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(msg.sender)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0), 0, msg.sender
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 24 * 3600 * stor9[address(msg.sender)] / stor9[address(msg.sender)] == 24 * 3600
                                require launchTime + (24 * 3600 * stor9[address(msg.sender)]) >= 24 * 3600 * stor9[address(msg.sender)]
                                require launchTime + (24 * 3600 * stor9[address(msg.sender)]) <= block.timestamp
                                if not block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600:
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600
                                    require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                                    require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(msg.sender)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(msg.sender)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                        stor10[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(msg.sender)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0), 0, msg.sender
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function renounceWhitelistAdmin() {
    if stor7:
        if not stor9[address(msg.sender)]:
            require launchTime >= 0
            require launchTime <= block.timestamp
            if block.timestamp - launchTime / 24 * 3600 > 0:
                require msg.sender
                if stor0[address(msg.sender)]:
                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                    stor9[address(msg.sender)] += block.timestamp - launchTime / 24 * 3600
                    require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                    stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                    require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                    stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                else:
                    require msg.sender
                    if stor1[address(msg.sender)]:
                        require (block.timestamp - launchTime / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                        stor9[address(msg.sender)] += block.timestamp - launchTime / 24 * 3600
                        require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                        stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                        require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                        stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                    else:
                        if not stor7:
                            require (block.timestamp - launchTime / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                            stor9[address(msg.sender)] += block.timestamp - launchTime / 24 * 3600
                            require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                            stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                            require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                            stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                        else:
                            if not stor9[address(msg.sender)]:
                                require launchTime >= 0
                                require launchTime <= block.timestamp
                                if not block.timestamp - launchTime / 24 * 3600:
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime / 24 * 3600
                                    require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                                    require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(msg.sender)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(msg.sender)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                        stor10[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(msg.sender)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0), 0, msg.sender
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 24 * 3600 * stor9[address(msg.sender)] / stor9[address(msg.sender)] == 24 * 3600
                                require launchTime + (24 * 3600 * stor9[address(msg.sender)]) >= 24 * 3600 * stor9[address(msg.sender)]
                                require launchTime + (24 * 3600 * stor9[address(msg.sender)]) <= block.timestamp
                                if not block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600:
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime / 24 * 3600
                                    require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                                    require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(msg.sender)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(msg.sender)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                        stor10[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(msg.sender)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0), 0, msg.sender
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
        else:
            require 24 * 3600 * stor9[address(msg.sender)] / stor9[address(msg.sender)] == 24 * 3600
            require launchTime + (24 * 3600 * stor9[address(msg.sender)]) >= 24 * 3600 * stor9[address(msg.sender)]
            require launchTime + (24 * 3600 * stor9[address(msg.sender)]) <= block.timestamp
            if block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600 > 0:
                require msg.sender
                if stor0[address(msg.sender)]:
                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                    stor9[address(msg.sender)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600
                    require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                    stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                    require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                    stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                else:
                    require msg.sender
                    if stor1[address(msg.sender)]:
                        require (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                        stor9[address(msg.sender)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600
                        require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                        stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                        require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                        stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                    else:
                        if not stor7:
                            require (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                            stor9[address(msg.sender)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600
                            require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                            stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                            require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                            stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                        else:
                            if not stor9[address(msg.sender)]:
                                require launchTime >= 0
                                require launchTime <= block.timestamp
                                if not block.timestamp - launchTime / 24 * 3600:
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600
                                    require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                                    require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(msg.sender)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(msg.sender)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                        stor10[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(msg.sender)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0), 0, msg.sender
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 24 * 3600 * stor9[address(msg.sender)] / stor9[address(msg.sender)] == 24 * 3600
                                require launchTime + (24 * 3600 * stor9[address(msg.sender)]) >= 24 * 3600 * stor9[address(msg.sender)]
                                require launchTime + (24 * 3600 * stor9[address(msg.sender)]) <= block.timestamp
                                if not block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600:
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600
                                    require stor10[address(msg.sender)].field_0 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = stor10[address(msg.sender)].field_0
                                    require stor12[address(msg.sender)] >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = stor12[address(msg.sender)]
                                else:
                                    s = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) - 1
                                    t = 0x1002972d7d385b457c50c19c8
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            s = s
                                            idx = idx / 2
                                            t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                            continue 
                                        s = (Mask(161, 95, s * t) >> 95) + 1 / 2
                                        idx = idx / 2
                                        t = (Mask(161, 95, t * t) >> 95) + 1 / 2
                                        continue 
                                    t = 0x1000000000000000000000000
                                    idx = (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) - 1
                                    u = 0xffd68d282c7a4ba83af3e638
                                    while idx > 0:
                                        if bool(idx) <= 0:
                                            t = t
                                            idx = idx / 2
                                            u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                            continue 
                                        t = (Mask(161, 95, t * u) >> 95) + 1 / 2
                                        idx = idx / 2
                                        u = (Mask(161, 95, u * u) >> 95) + 1 / 2
                                        continue 
                                    require (block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600) + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
                                    stor9[address(msg.sender)] += block.timestamp - launchTime - (24 * 3600 * stor9[address(msg.sender)]) / 24 * 3600
                                    require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                    stor11[address(msg.sender)].field_255 = 0
                                    require ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2 >= stor12[address(msg.sender)]
                                    stor13[address(msg.sender)].field_0 = ((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2
                                    stor13[address(msg.sender)].field_255 = 0
                                    if (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 > 0:
                                        require ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2 >= stor10[address(msg.sender)].field_0
                                        stor10[address(msg.sender)].field_0 = ((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2
                                        stor10[address(msg.sender)].field_255 = 0
                                        require (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply >= totalSupply
                                        totalSupply = (((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0 + totalSupply
                                        emit 0xfeddf252: ((((Mask(161, 95, (t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) + ((Mask(161, 95, 0x287a26c490921db66dd12d9e * (Mask(161, 95, (2 * t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (2 * t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) >> 95) + 1 / 2) / 2) - stor10[address(msg.sender)].field_0), 0, msg.sender
                                    if 0 < (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]:
                                        require ext_code.size(sub_b5e6e984Address)
                                        call sub_b5e6e984Address.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (((Mask(161, 95, 0x653160eb696d4a48128af20c3 * (Mask(161, 95, (2 * t * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 7922816251426433759354395 * stor13[address(msg.sender)].field_0) >> 95) + 1 / 2) + (2 * t * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0)) >> 95) + 1 / 2) >> 95) + 1 / 2) + ((Mask(161, 95, (t * stor12[address(msg.sender)]) + (s * stor12[address(msg.sender)]) + (t * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2) + (s * (Mask(161, 95, 316912650057057350374175801 * stor11[address(msg.sender)].field_0) >> 95) + 1 / 2)) >> 95) + 1 / 2) / 2) - stor12[address(msg.sender)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}



}
