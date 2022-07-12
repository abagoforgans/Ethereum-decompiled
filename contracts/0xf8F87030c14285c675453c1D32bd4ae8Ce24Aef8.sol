contract main {




// =====================  Runtime code  =====================


const name = 'ExpToken'

const decimals = 18

const symbol = 'ExpToken'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
array of struct m_emissions;
mapping of uint256 m_lastAccountEmission;
mapping of uint256 m_lastDividends;
uint256 m_totalHangingDividends;
uint256 m_totalDividends;
uint8 stor9;
uint256 cap;

function mintingFinished() {
    return bool(stor9)
}

function totalSupply() {
    return totalSupply
}

function cap() {
    return cap
}

function m_lastDividends(address arg1) {
    return m_lastDividends[arg1]
}

function m_lastAccountEmission(address arg1) {
    return m_lastAccountEmission[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function m_emissions(uint256 arg1) {
    require arg1 < m_emissions.length
    return m_emissions[arg1].field_0, m_emissions[arg1].field_256
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function m_totalDividends() {
    return m_totalDividends
}

function m_totalHangingDividends() {
    return m_totalHangingDividends
}

function finishMinting() {
    require msg.sender == owner
    require not stor9
    stor9 = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender);
        require m_totalDividends + msg.value >= m_totalDividends
        m_totalDividends += msg.value
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function requestHangingDividends() {
    require msg.sender == owner
    call owner with:
       value m_totalHangingDividends wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit PayHangingDividend(m_totalHangingDividends);
    m_totalHangingDividends = 0
}

function requestDividends() {
    require m_lastAccountEmission[address(msg.sender)] <= m_emissions.length - 1
    require m_totalDividends >= m_lastDividends[address(msg.sender)]
    if m_totalDividends != m_lastDividends[address(msg.sender)]:
        if balanceOf[address(msg.sender)] != 0:
            s = 0
            idx = m_lastAccountEmission[address(msg.sender)]
            s = 0
            while idx <= m_emissions.length - 1:
                if s > 200:
                    if m_lastAccountEmission[address(msg.sender)] == m_emissions.length - 1:
                        m_lastDividends[address(msg.sender)] = m_totalDividends
                    else:
                        require m_lastAccountEmission[address(msg.sender)] + 1 >= m_lastAccountEmission[address(msg.sender)]
                        require m_lastAccountEmission[address(msg.sender)] + 1 < m_emissions.length
                        m_lastDividends[address(msg.sender)] = m_emissions[stor5[address(msg.sender)] + 1].field_256
                require idx < m_emissions.length
                mem[0] = 4
                if 0 == m_emissions[idx].field_0:
                    s = (2 * idx) + sha3(4)
                    idx = idx + 1
                    s = s + 1
                    continue 
                if idx == m_emissions.length - 1:
                    if m_lastDividends[address(msg.sender)] <= m_totalDividends:
                        if not m_totalDividends - m_lastDividends[address(msg.sender)]:
                            if m_emissions[idx].field_0:
                                if 0 / m_emissions[idx].field_0 >= 0:
                                    s = (2 * idx) + sha3(4)
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                        else:
                            if m_totalDividends - m_lastDividends[address(msg.sender)]:
                                if (m_totalDividends * balanceOf[address(msg.sender)]) - (m_lastDividends[address(msg.sender)] * balanceOf[address(msg.sender)]) / m_totalDividends - m_lastDividends[address(msg.sender)] == balanceOf[address(msg.sender)]:
                                    if m_emissions[idx].field_0:
                                        if (m_totalDividends * balanceOf[address(msg.sender)]) - (m_lastDividends[address(msg.sender)] * balanceOf[address(msg.sender)]) / m_emissions[idx].field_0 >= 0:
                                            s = (2 * idx) + sha3(4)
                                            idx = idx + 1
                                            s = s + 1
                                            continue 
                else:
                    if idx + 1 >= idx:
                        if idx + 1 < m_emissions.length:
                            if m_lastDividends[address(msg.sender)] <= m_emissions[idx + 1].field_256:
                                if idx + 1 >= idx:
                                    if idx + 1 < m_emissions.length:
                                        mem[0] = 4
                                        if not m_emissions[idx + 1].field_256 - m_lastDividends[address(msg.sender)]:
                                            if m_emissions[idx].field_0:
                                                if 0 / m_emissions[idx].field_0 >= 0:
                                                    s = (2 * idx) + sha3(4)
                                                    idx = idx + 1
                                                    s = s + 1
                                                    continue 
                                        else:
                                            if m_emissions[idx + 1].field_256 - m_lastDividends[address(msg.sender)]:
                                                if (m_emissions[idx + 1].field_256 * balanceOf[address(msg.sender)]) - (m_lastDividends[address(msg.sender)] * balanceOf[address(msg.sender)]) / m_emissions[idx + 1].field_256 - m_lastDividends[address(msg.sender)] == balanceOf[address(msg.sender)]:
                                                    if m_emissions[idx].field_0:
                                                        if (m_emissions[idx + 1].field_256 * balanceOf[address(msg.sender)]) - (m_lastDividends[address(msg.sender)] * balanceOf[address(msg.sender)]) / m_emissions[idx].field_0 >= 0:
                                                            s = (2 * idx) + sha3(4)
                                                            idx = idx + 1
                                                            s = s + 1
                                                            continue 
                revert
            if m_lastAccountEmission[address(msg.sender)] == m_emissions.length - 1:
                m_lastDividends[address(msg.sender)] = m_totalDividends
            else:
                require m_lastAccountEmission[address(msg.sender)] + 1 >= m_lastAccountEmission[address(msg.sender)]
                require m_lastAccountEmission[address(msg.sender)] + 1 < m_emissions.length
                m_lastDividends[address(msg.sender)] = m_emissions[stor5[address(msg.sender)] + 1].field_256
        else:
            m_lastAccountEmission[address(msg.sender)] = m_emissions.length - 1
            if m_emissions.length - 1 == m_emissions.length - 1:
                m_lastDividends[address(msg.sender)] = m_totalDividends
            else:
                require m_emissions.length >= m_emissions.length - 1
                require m_emissions.length < m_emissions.length
                m_lastDividends[address(msg.sender)] = m_emissions[m_emissions.length].field_256
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor9
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= cap
    require msg.sender == owner
    require not stor9
    require m_lastAccountEmission[address(arg1)] <= m_emissions.length - 1
    require m_totalDividends >= m_lastDividends[address(arg1)]
    if m_totalDividends != m_lastDividends[address(arg1)]:
        if balanceOf[address(arg1)] != 0:
            s = 0
            idx = m_lastAccountEmission[address(arg1)]
            s = 0
            while idx <= m_emissions.length - 1:
                if s <= 200:
                    require idx < m_emissions.length
                    mem[0] = 4
                    if 0 == m_emissions[idx].field_0:
                        s = (2 * idx) + sha3(4)
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if idx == m_emissions.length - 1:
                        if m_lastDividends[address(arg1)] <= m_totalDividends:
                            if not m_totalDividends - m_lastDividends[address(arg1)]:
                                if m_emissions[idx].field_0:
                                    if 0 / m_emissions[idx].field_0 >= 0:
                                        s = (2 * idx) + sha3(4)
                                        idx = idx + 1
                                        s = s + 1
                                        continue 
                            else:
                                if m_totalDividends - m_lastDividends[address(arg1)]:
                                    if (m_totalDividends * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_totalDividends - m_lastDividends[address(arg1)] == balanceOf[address(arg1)]:
                                        if m_emissions[idx].field_0:
                                            if (m_totalDividends * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_emissions[idx].field_0 >= 0:
                                                s = (2 * idx) + sha3(4)
                                                idx = idx + 1
                                                s = s + 1
                                                continue 
                    else:
                        if idx + 1 >= idx:
                            if idx + 1 < m_emissions.length:
                                if m_lastDividends[address(arg1)] <= m_emissions[idx + 1].field_256:
                                    if idx + 1 >= idx:
                                        if idx + 1 < m_emissions.length:
                                            mem[0] = 4
                                            if not m_emissions[idx + 1].field_256 - m_lastDividends[address(arg1)]:
                                                if m_emissions[idx].field_0:
                                                    if 0 / m_emissions[idx].field_0 >= 0:
                                                        s = (2 * idx) + sha3(4)
                                                        idx = idx + 1
                                                        s = s + 1
                                                        continue 
                                            else:
                                                if m_emissions[idx + 1].field_256 - m_lastDividends[address(arg1)]:
                                                    if (m_emissions[idx + 1].field_256 * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_emissions[idx + 1].field_256 - m_lastDividends[address(arg1)] == balanceOf[address(arg1)]:
                                                        if m_emissions[idx].field_0:
                                                            if (m_emissions[idx + 1].field_256 * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_emissions[idx].field_0 >= 0:
                                                                s = (2 * idx) + sha3(4)
                                                                idx = idx + 1
                                                                s = s + 1
                                                                continue 
                    revert
                if m_lastAccountEmission[address(arg1)] == m_emissions.length - 1:
                    m_lastDividends[address(arg1)] = m_totalDividends
                else:
                    require m_lastAccountEmission[address(arg1)] + 1 >= m_lastAccountEmission[address(arg1)]
                    require m_lastAccountEmission[address(arg1)] + 1 < m_emissions.length
                    m_lastDividends[address(arg1)] = m_emissions[stor5[address(arg1)] + 1].field_256
                require msg.sender == owner
                require not stor9
                require totalSupply + arg2 >= totalSupply
                totalSupply += arg2
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
                emit Mint(arg2, arg1);
                emit Transfer(arg2, 0, arg1);
                m_emissions.length++
                m_emissions[m_emissions.length].field_0 = totalSupply
                m_emissions[m_emissions.length].field_256 = m_totalDividends
                emit EmissionHappened(totalSupply, m_totalDividends);
                return 1
            if m_lastAccountEmission[address(arg1)] == m_emissions.length - 1:
                m_lastDividends[address(arg1)] = m_totalDividends
            else:
                require m_lastAccountEmission[address(arg1)] + 1 >= m_lastAccountEmission[address(arg1)]
                require m_lastAccountEmission[address(arg1)] + 1 < m_emissions.length
                m_lastDividends[address(arg1)] = m_emissions[stor5[address(arg1)] + 1].field_256
        else:
            m_lastAccountEmission[address(arg1)] = m_emissions.length - 1
            if m_emissions.length - 1 == m_emissions.length - 1:
                m_lastDividends[address(arg1)] = m_totalDividends
            else:
                require m_emissions.length >= m_emissions.length - 1
                require m_emissions.length < m_emissions.length
                m_lastDividends[address(arg1)] = m_emissions[m_emissions.length].field_256
    require msg.sender == owner
    require not stor9
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    m_emissions.length++
    m_emissions[m_emissions.length].field_0 = totalSupply
    m_emissions[m_emissions.length].field_256 = m_totalDividends
    emit EmissionHappened(totalSupply, m_totalDividends);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require m_lastAccountEmission[address(msg.sender)] <= m_emissions.length - 1
    require m_totalDividends >= m_lastDividends[address(msg.sender)]
    if m_totalDividends != m_lastDividends[address(msg.sender)]:
        if balanceOf[address(msg.sender)] != 0:
            s = 0
            idx = m_lastAccountEmission[address(msg.sender)]
            s = 0
            while idx <= m_emissions.length - 1:
                if s <= 200:
                    require idx < m_emissions.length
                    mem[0] = 4
                    if 0 == m_emissions[idx].field_0:
                        s = (2 * idx) + sha3(4)
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if idx == m_emissions.length - 1:
                        if m_lastDividends[address(msg.sender)] <= m_totalDividends:
                            if not m_totalDividends - m_lastDividends[address(msg.sender)]:
                                if m_emissions[idx].field_0:
                                    if 0 / m_emissions[idx].field_0 >= 0:
                                        s = (2 * idx) + sha3(4)
                                        idx = idx + 1
                                        s = s + 1
                                        continue 
                            else:
                                if m_totalDividends - m_lastDividends[address(msg.sender)]:
                                    if (m_totalDividends * balanceOf[address(msg.sender)]) - (m_lastDividends[address(msg.sender)] * balanceOf[address(msg.sender)]) / m_totalDividends - m_lastDividends[address(msg.sender)] == balanceOf[address(msg.sender)]:
                                        if m_emissions[idx].field_0:
                                            if (m_totalDividends * balanceOf[address(msg.sender)]) - (m_lastDividends[address(msg.sender)] * balanceOf[address(msg.sender)]) / m_emissions[idx].field_0 >= 0:
                                                s = (2 * idx) + sha3(4)
                                                idx = idx + 1
                                                s = s + 1
                                                continue 
                    else:
                        if idx + 1 >= idx:
                            if idx + 1 < m_emissions.length:
                                if m_lastDividends[address(msg.sender)] <= m_emissions[idx + 1].field_256:
                                    if idx + 1 >= idx:
                                        if idx + 1 < m_emissions.length:
                                            mem[0] = 4
                                            if not m_emissions[idx + 1].field_256 - m_lastDividends[address(msg.sender)]:
                                                if m_emissions[idx].field_0:
                                                    if 0 / m_emissions[idx].field_0 >= 0:
                                                        s = (2 * idx) + sha3(4)
                                                        idx = idx + 1
                                                        s = s + 1
                                                        continue 
                                            else:
                                                if m_emissions[idx + 1].field_256 - m_lastDividends[address(msg.sender)]:
                                                    if (m_emissions[idx + 1].field_256 * balanceOf[address(msg.sender)]) - (m_lastDividends[address(msg.sender)] * balanceOf[address(msg.sender)]) / m_emissions[idx + 1].field_256 - m_lastDividends[address(msg.sender)] == balanceOf[address(msg.sender)]:
                                                        if m_emissions[idx].field_0:
                                                            if (m_emissions[idx + 1].field_256 * balanceOf[address(msg.sender)]) - (m_lastDividends[address(msg.sender)] * balanceOf[address(msg.sender)]) / m_emissions[idx].field_0 >= 0:
                                                                s = (2 * idx) + sha3(4)
                                                                idx = idx + 1
                                                                s = s + 1
                                                                continue 
                    revert
                if m_lastAccountEmission[address(msg.sender)] == m_emissions.length - 1:
                    m_lastDividends[address(msg.sender)] = m_totalDividends
                else:
                    require m_lastAccountEmission[address(msg.sender)] + 1 >= m_lastAccountEmission[address(msg.sender)]
                    require m_lastAccountEmission[address(msg.sender)] + 1 < m_emissions.length
                    m_lastDividends[address(msg.sender)] = m_emissions[stor5[address(msg.sender)] + 1].field_256
                require m_lastAccountEmission[address(arg1)] <= m_emissions.length - 1
                require m_totalDividends >= m_lastDividends[address(arg1)]
                if m_totalDividends != m_lastDividends[address(arg1)]:
                    if balanceOf[address(arg1)] != 0:
                        s = 0
                        idx = m_lastAccountEmission[address(arg1)]
                        s = 0
                        while idx <= m_emissions.length - 1:
                            if s > 200:
                                if m_lastAccountEmission[address(arg1)] == m_emissions.length - 1:
                                    m_lastDividends[address(arg1)] = m_totalDividends
                                else:
                                    require m_lastAccountEmission[address(arg1)] + 1 >= m_lastAccountEmission[address(arg1)]
                                    require m_lastAccountEmission[address(arg1)] + 1 < m_emissions.length
                                    m_lastDividends[address(arg1)] = m_emissions[stor5[address(arg1)] + 1].field_256
                                require arg1
                                require arg2 <= balanceOf[address(msg.sender)]
                                require arg2 <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] -= arg2
                                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            require idx < m_emissions.length
                            mem[0] = 4
                            if 0 == m_emissions[idx].field_0:
                                s = (2 * idx) + sha3(4)
                                idx = idx + 1
                                s = s + 1
                                continue 
                            if idx == m_emissions.length - 1:
                                if m_lastDividends[address(arg1)] <= m_totalDividends:
                                    if not m_totalDividends - m_lastDividends[address(arg1)]:
                                        if m_emissions[idx].field_0:
                                            if 0 / m_emissions[idx].field_0 >= 0:
                                                s = (2 * idx) + sha3(4)
                                                idx = idx + 1
                                                s = s + 1
                                                continue 
                                    else:
                                        if m_totalDividends - m_lastDividends[address(arg1)]:
                                            if (m_totalDividends * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_totalDividends - m_lastDividends[address(arg1)] == balanceOf[address(arg1)]:
                                                if m_emissions[idx].field_0:
                                                    if (m_totalDividends * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_emissions[idx].field_0 >= 0:
                                                        s = (2 * idx) + sha3(4)
                                                        idx = idx + 1
                                                        s = s + 1
                                                        continue 
                            else:
                                if idx + 1 >= idx:
                                    if idx + 1 < m_emissions.length:
                                        if m_lastDividends[address(arg1)] <= m_emissions[idx + 1].field_256:
                                            if idx + 1 >= idx:
                                                if idx + 1 < m_emissions.length:
                                                    mem[0] = 4
                                                    if not m_emissions[idx + 1].field_256 - m_lastDividends[address(arg1)]:
                                                        if m_emissions[idx].field_0:
                                                            if 0 / m_emissions[idx].field_0 >= 0:
                                                                s = (2 * idx) + sha3(4)
                                                                idx = idx + 1
                                                                s = s + 1
                                                                continue 
                                                    else:
                                                        if m_emissions[idx + 1].field_256 - m_lastDividends[address(arg1)]:
                                                            if (m_emissions[idx + 1].field_256 * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_emissions[idx + 1].field_256 - m_lastDividends[address(arg1)] == balanceOf[address(arg1)]:
                                                                if m_emissions[idx].field_0:
                                                                    if (m_emissions[idx + 1].field_256 * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_emissions[idx].field_0 >= 0:
                                                                        s = (2 * idx) + sha3(4)
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                            revert
                        if m_lastAccountEmission[address(arg1)] == m_emissions.length - 1:
                            m_lastDividends[address(arg1)] = m_totalDividends
                        else:
                            require m_lastAccountEmission[address(arg1)] + 1 >= m_lastAccountEmission[address(arg1)]
                            require m_lastAccountEmission[address(arg1)] + 1 < m_emissions.length
                            m_lastDividends[address(arg1)] = m_emissions[stor5[address(arg1)] + 1].field_256
                    else:
                        m_lastAccountEmission[address(arg1)] = m_emissions.length - 1
                        if m_emissions.length - 1 == m_emissions.length - 1:
                            m_lastDividends[address(arg1)] = m_totalDividends
                        else:
                            require m_emissions.length >= m_emissions.length - 1
                            require m_emissions.length < m_emissions.length
                            m_lastDividends[address(arg1)] = m_emissions[m_emissions.length].field_256
                require arg1
                require arg2 <= balanceOf[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                return 1
            if m_lastAccountEmission[address(msg.sender)] == m_emissions.length - 1:
                m_lastDividends[address(msg.sender)] = m_totalDividends
            else:
                require m_lastAccountEmission[address(msg.sender)] + 1 >= m_lastAccountEmission[address(msg.sender)]
                require m_lastAccountEmission[address(msg.sender)] + 1 < m_emissions.length
                m_lastDividends[address(msg.sender)] = m_emissions[stor5[address(msg.sender)] + 1].field_256
        else:
            m_lastAccountEmission[address(msg.sender)] = m_emissions.length - 1
            if m_emissions.length - 1 == m_emissions.length - 1:
                m_lastDividends[address(msg.sender)] = m_totalDividends
            else:
                require m_emissions.length >= m_emissions.length - 1
                require m_emissions.length < m_emissions.length
                m_lastDividends[address(msg.sender)] = m_emissions[m_emissions.length].field_256
    require m_lastAccountEmission[address(arg1)] <= m_emissions.length - 1
    require m_totalDividends >= m_lastDividends[address(arg1)]
    if m_totalDividends != m_lastDividends[address(arg1)]:
        if balanceOf[address(arg1)] != 0:
            s = 0
            idx = m_lastAccountEmission[address(arg1)]
            s = 0
            while idx <= m_emissions.length - 1:
                if s > 200:
                    if m_lastAccountEmission[address(arg1)] == m_emissions.length - 1:
                        m_lastDividends[address(arg1)] = m_totalDividends
                    else:
                        require m_lastAccountEmission[address(arg1)] + 1 >= m_lastAccountEmission[address(arg1)]
                        require m_lastAccountEmission[address(arg1)] + 1 < m_emissions.length
                        m_lastDividends[address(arg1)] = m_emissions[stor5[address(arg1)] + 1].field_256
                    require arg1
                    require arg2 <= balanceOf[address(msg.sender)]
                    require arg2 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg2
                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                require idx < m_emissions.length
                mem[0] = 4
                if 0 == m_emissions[idx].field_0:
                    s = (2 * idx) + sha3(4)
                    idx = idx + 1
                    s = s + 1
                    continue 
                if idx == m_emissions.length - 1:
                    if m_lastDividends[address(arg1)] <= m_totalDividends:
                        if not m_totalDividends - m_lastDividends[address(arg1)]:
                            if m_emissions[idx].field_0:
                                if 0 / m_emissions[idx].field_0 >= 0:
                                    s = (2 * idx) + sha3(4)
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                        else:
                            if m_totalDividends - m_lastDividends[address(arg1)]:
                                if (m_totalDividends * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_totalDividends - m_lastDividends[address(arg1)] == balanceOf[address(arg1)]:
                                    if m_emissions[idx].field_0:
                                        if (m_totalDividends * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_emissions[idx].field_0 >= 0:
                                            s = (2 * idx) + sha3(4)
                                            idx = idx + 1
                                            s = s + 1
                                            continue 
                else:
                    if idx + 1 >= idx:
                        if idx + 1 < m_emissions.length:
                            if m_lastDividends[address(arg1)] <= m_emissions[idx + 1].field_256:
                                if idx + 1 >= idx:
                                    if idx + 1 < m_emissions.length:
                                        mem[0] = 4
                                        if not m_emissions[idx + 1].field_256 - m_lastDividends[address(arg1)]:
                                            if m_emissions[idx].field_0:
                                                if 0 / m_emissions[idx].field_0 >= 0:
                                                    s = (2 * idx) + sha3(4)
                                                    idx = idx + 1
                                                    s = s + 1
                                                    continue 
                                        else:
                                            if m_emissions[idx + 1].field_256 - m_lastDividends[address(arg1)]:
                                                if (m_emissions[idx + 1].field_256 * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_emissions[idx + 1].field_256 - m_lastDividends[address(arg1)] == balanceOf[address(arg1)]:
                                                    if m_emissions[idx].field_0:
                                                        if (m_emissions[idx + 1].field_256 * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_emissions[idx].field_0 >= 0:
                                                            s = (2 * idx) + sha3(4)
                                                            idx = idx + 1
                                                            s = s + 1
                                                            continue 
                revert
            if m_lastAccountEmission[address(arg1)] == m_emissions.length - 1:
                m_lastDividends[address(arg1)] = m_totalDividends
            else:
                require m_lastAccountEmission[address(arg1)] + 1 >= m_lastAccountEmission[address(arg1)]
                require m_lastAccountEmission[address(arg1)] + 1 < m_emissions.length
                m_lastDividends[address(arg1)] = m_emissions[stor5[address(arg1)] + 1].field_256
        else:
            m_lastAccountEmission[address(arg1)] = m_emissions.length - 1
            if m_emissions.length - 1 == m_emissions.length - 1:
                m_lastDividends[address(arg1)] = m_totalDividends
            else:
                require m_emissions.length >= m_emissions.length - 1
                require m_emissions.length < m_emissions.length
                m_lastDividends[address(arg1)] = m_emissions[m_emissions.length].field_256
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require m_lastAccountEmission[address(arg1)] <= m_emissions.length - 1
    require m_totalDividends >= m_lastDividends[address(arg1)]
    if m_totalDividends != m_lastDividends[address(arg1)]:
        if balanceOf[address(arg1)] != 0:
            s = 0
            idx = m_lastAccountEmission[address(arg1)]
            s = 0
            while idx <= m_emissions.length - 1:
                if s <= 200:
                    require idx < m_emissions.length
                    mem[0] = 4
                    if 0 == m_emissions[idx].field_0:
                        s = (2 * idx) + sha3(4)
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if idx == m_emissions.length - 1:
                        if m_lastDividends[address(arg1)] <= m_totalDividends:
                            if not m_totalDividends - m_lastDividends[address(arg1)]:
                                if m_emissions[idx].field_0:
                                    if 0 / m_emissions[idx].field_0 >= 0:
                                        s = (2 * idx) + sha3(4)
                                        idx = idx + 1
                                        s = s + 1
                                        continue 
                            else:
                                if m_totalDividends - m_lastDividends[address(arg1)]:
                                    if (m_totalDividends * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_totalDividends - m_lastDividends[address(arg1)] == balanceOf[address(arg1)]:
                                        if m_emissions[idx].field_0:
                                            if (m_totalDividends * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_emissions[idx].field_0 >= 0:
                                                s = (2 * idx) + sha3(4)
                                                idx = idx + 1
                                                s = s + 1
                                                continue 
                    else:
                        if idx + 1 >= idx:
                            if idx + 1 < m_emissions.length:
                                if m_lastDividends[address(arg1)] <= m_emissions[idx + 1].field_256:
                                    if idx + 1 >= idx:
                                        if idx + 1 < m_emissions.length:
                                            mem[0] = 4
                                            if not m_emissions[idx + 1].field_256 - m_lastDividends[address(arg1)]:
                                                if m_emissions[idx].field_0:
                                                    if 0 / m_emissions[idx].field_0 >= 0:
                                                        s = (2 * idx) + sha3(4)
                                                        idx = idx + 1
                                                        s = s + 1
                                                        continue 
                                            else:
                                                if m_emissions[idx + 1].field_256 - m_lastDividends[address(arg1)]:
                                                    if (m_emissions[idx + 1].field_256 * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_emissions[idx + 1].field_256 - m_lastDividends[address(arg1)] == balanceOf[address(arg1)]:
                                                        if m_emissions[idx].field_0:
                                                            if (m_emissions[idx + 1].field_256 * balanceOf[address(arg1)]) - (m_lastDividends[address(arg1)] * balanceOf[address(arg1)]) / m_emissions[idx].field_0 >= 0:
                                                                s = (2 * idx) + sha3(4)
                                                                idx = idx + 1
                                                                s = s + 1
                                                                continue 
                    revert
                if m_lastAccountEmission[address(arg1)] == m_emissions.length - 1:
                    m_lastDividends[address(arg1)] = m_totalDividends
                else:
                    require m_lastAccountEmission[address(arg1)] + 1 >= m_lastAccountEmission[address(arg1)]
                    require m_lastAccountEmission[address(arg1)] + 1 < m_emissions.length
                    m_lastDividends[address(arg1)] = m_emissions[stor5[address(arg1)] + 1].field_256
                require m_lastAccountEmission[address(arg2)] <= m_emissions.length - 1
                require m_totalDividends >= m_lastDividends[address(arg2)]
                if m_totalDividends != m_lastDividends[address(arg2)]:
                    if balanceOf[address(arg2)] != 0:
                        s = 0
                        idx = m_lastAccountEmission[address(arg2)]
                        s = 0
                        while idx <= m_emissions.length - 1:
                            if s > 200:
                                if m_lastAccountEmission[address(arg2)] == m_emissions.length - 1:
                                    m_lastDividends[address(arg2)] = m_totalDividends
                                else:
                                    require m_lastAccountEmission[address(arg2)] + 1 >= m_lastAccountEmission[address(arg2)]
                                    require m_lastAccountEmission[address(arg2)] + 1 < m_emissions.length
                                    m_lastDividends[address(arg2)] = m_emissions[stor5[address(arg2)] + 1].field_256
                                require arg2
                                require arg3 <= balanceOf[address(arg1)]
                                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                                require arg3 <= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] -= arg3
                                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                balanceOf[address(arg2)] += arg3
                                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Transfer(arg3, arg1, arg2);
                                return 1
                            require idx < m_emissions.length
                            mem[0] = 4
                            if 0 == m_emissions[idx].field_0:
                                s = (2 * idx) + sha3(4)
                                idx = idx + 1
                                s = s + 1
                                continue 
                            if idx == m_emissions.length - 1:
                                if m_lastDividends[address(arg2)] <= m_totalDividends:
                                    if not m_totalDividends - m_lastDividends[address(arg2)]:
                                        if m_emissions[idx].field_0:
                                            if 0 / m_emissions[idx].field_0 >= 0:
                                                s = (2 * idx) + sha3(4)
                                                idx = idx + 1
                                                s = s + 1
                                                continue 
                                    else:
                                        if m_totalDividends - m_lastDividends[address(arg2)]:
                                            if (m_totalDividends * balanceOf[address(arg2)]) - (m_lastDividends[address(arg2)] * balanceOf[address(arg2)]) / m_totalDividends - m_lastDividends[address(arg2)] == balanceOf[address(arg2)]:
                                                if m_emissions[idx].field_0:
                                                    if (m_totalDividends * balanceOf[address(arg2)]) - (m_lastDividends[address(arg2)] * balanceOf[address(arg2)]) / m_emissions[idx].field_0 >= 0:
                                                        s = (2 * idx) + sha3(4)
                                                        idx = idx + 1
                                                        s = s + 1
                                                        continue 
                            else:
                                if idx + 1 >= idx:
                                    if idx + 1 < m_emissions.length:
                                        if m_lastDividends[address(arg2)] <= m_emissions[idx + 1].field_256:
                                            if idx + 1 >= idx:
                                                if idx + 1 < m_emissions.length:
                                                    mem[0] = 4
                                                    if not m_emissions[idx + 1].field_256 - m_lastDividends[address(arg2)]:
                                                        if m_emissions[idx].field_0:
                                                            if 0 / m_emissions[idx].field_0 >= 0:
                                                                s = (2 * idx) + sha3(4)
                                                                idx = idx + 1
                                                                s = s + 1
                                                                continue 
                                                    else:
                                                        if m_emissions[idx + 1].field_256 - m_lastDividends[address(arg2)]:
                                                            if (m_emissions[idx + 1].field_256 * balanceOf[address(arg2)]) - (m_lastDividends[address(arg2)] * balanceOf[address(arg2)]) / m_emissions[idx + 1].field_256 - m_lastDividends[address(arg2)] == balanceOf[address(arg2)]:
                                                                if m_emissions[idx].field_0:
                                                                    if (m_emissions[idx + 1].field_256 * balanceOf[address(arg2)]) - (m_lastDividends[address(arg2)] * balanceOf[address(arg2)]) / m_emissions[idx].field_0 >= 0:
                                                                        s = (2 * idx) + sha3(4)
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                            revert
                        if m_lastAccountEmission[address(arg2)] == m_emissions.length - 1:
                            m_lastDividends[address(arg2)] = m_totalDividends
                        else:
                            require m_lastAccountEmission[address(arg2)] + 1 >= m_lastAccountEmission[address(arg2)]
                            require m_lastAccountEmission[address(arg2)] + 1 < m_emissions.length
                            m_lastDividends[address(arg2)] = m_emissions[stor5[address(arg2)] + 1].field_256
                    else:
                        m_lastAccountEmission[address(arg2)] = m_emissions.length - 1
                        if m_emissions.length - 1 == m_emissions.length - 1:
                            m_lastDividends[address(arg2)] = m_totalDividends
                        else:
                            require m_emissions.length >= m_emissions.length - 1
                            require m_emissions.length < m_emissions.length
                            m_lastDividends[address(arg2)] = m_emissions[m_emissions.length].field_256
                require arg2
                require arg3 <= balanceOf[address(arg1)]
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Transfer(arg3, arg1, arg2);
                return 1
            if m_lastAccountEmission[address(arg1)] == m_emissions.length - 1:
                m_lastDividends[address(arg1)] = m_totalDividends
            else:
                require m_lastAccountEmission[address(arg1)] + 1 >= m_lastAccountEmission[address(arg1)]
                require m_lastAccountEmission[address(arg1)] + 1 < m_emissions.length
                m_lastDividends[address(arg1)] = m_emissions[stor5[address(arg1)] + 1].field_256
        else:
            m_lastAccountEmission[address(arg1)] = m_emissions.length - 1
            if m_emissions.length - 1 == m_emissions.length - 1:
                m_lastDividends[address(arg1)] = m_totalDividends
            else:
                require m_emissions.length >= m_emissions.length - 1
                require m_emissions.length < m_emissions.length
                m_lastDividends[address(arg1)] = m_emissions[m_emissions.length].field_256
    require m_lastAccountEmission[address(arg2)] <= m_emissions.length - 1
    require m_totalDividends >= m_lastDividends[address(arg2)]
    if m_totalDividends != m_lastDividends[address(arg2)]:
        if balanceOf[address(arg2)] != 0:
            s = 0
            idx = m_lastAccountEmission[address(arg2)]
            s = 0
            while idx <= m_emissions.length - 1:
                if s > 200:
                    if m_lastAccountEmission[address(arg2)] == m_emissions.length - 1:
                        m_lastDividends[address(arg2)] = m_totalDividends
                    else:
                        require m_lastAccountEmission[address(arg2)] + 1 >= m_lastAccountEmission[address(arg2)]
                        require m_lastAccountEmission[address(arg2)] + 1 < m_emissions.length
                        m_lastDividends[address(arg2)] = m_emissions[stor5[address(arg2)] + 1].field_256
                    require arg2
                    require arg3 <= balanceOf[address(arg1)]
                    require arg3 <= allowance[address(arg1)][address(msg.sender)]
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] += arg3
                    require arg3 <= allowance[address(arg1)][address(msg.sender)]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Transfer(arg3, arg1, arg2);
                    return 1
                require idx < m_emissions.length
                mem[0] = 4
                if 0 == m_emissions[idx].field_0:
                    s = (2 * idx) + sha3(4)
                    idx = idx + 1
                    s = s + 1
                    continue 
                if idx == m_emissions.length - 1:
                    if m_lastDividends[address(arg2)] <= m_totalDividends:
                        if not m_totalDividends - m_lastDividends[address(arg2)]:
                            if m_emissions[idx].field_0:
                                if 0 / m_emissions[idx].field_0 >= 0:
                                    s = (2 * idx) + sha3(4)
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                        else:
                            if m_totalDividends - m_lastDividends[address(arg2)]:
                                if (m_totalDividends * balanceOf[address(arg2)]) - (m_lastDividends[address(arg2)] * balanceOf[address(arg2)]) / m_totalDividends - m_lastDividends[address(arg2)] == balanceOf[address(arg2)]:
                                    if m_emissions[idx].field_0:
                                        if (m_totalDividends * balanceOf[address(arg2)]) - (m_lastDividends[address(arg2)] * balanceOf[address(arg2)]) / m_emissions[idx].field_0 >= 0:
                                            s = (2 * idx) + sha3(4)
                                            idx = idx + 1
                                            s = s + 1
                                            continue 
                else:
                    if idx + 1 >= idx:
                        if idx + 1 < m_emissions.length:
                            if m_lastDividends[address(arg2)] <= m_emissions[idx + 1].field_256:
                                if idx + 1 >= idx:
                                    if idx + 1 < m_emissions.length:
                                        mem[0] = 4
                                        if not m_emissions[idx + 1].field_256 - m_lastDividends[address(arg2)]:
                                            if m_emissions[idx].field_0:
                                                if 0 / m_emissions[idx].field_0 >= 0:
                                                    s = (2 * idx) + sha3(4)
                                                    idx = idx + 1
                                                    s = s + 1
                                                    continue 
                                        else:
                                            if m_emissions[idx + 1].field_256 - m_lastDividends[address(arg2)]:
                                                if (m_emissions[idx + 1].field_256 * balanceOf[address(arg2)]) - (m_lastDividends[address(arg2)] * balanceOf[address(arg2)]) / m_emissions[idx + 1].field_256 - m_lastDividends[address(arg2)] == balanceOf[address(arg2)]:
                                                    if m_emissions[idx].field_0:
                                                        if (m_emissions[idx + 1].field_256 * balanceOf[address(arg2)]) - (m_lastDividends[address(arg2)] * balanceOf[address(arg2)]) / m_emissions[idx].field_0 >= 0:
                                                            s = (2 * idx) + sha3(4)
                                                            idx = idx + 1
                                                            s = s + 1
                                                            continue 
                revert
            if m_lastAccountEmission[address(arg2)] == m_emissions.length - 1:
                m_lastDividends[address(arg2)] = m_totalDividends
            else:
                require m_lastAccountEmission[address(arg2)] + 1 >= m_lastAccountEmission[address(arg2)]
                require m_lastAccountEmission[address(arg2)] + 1 < m_emissions.length
                m_lastDividends[address(arg2)] = m_emissions[stor5[address(arg2)] + 1].field_256
        else:
            m_lastAccountEmission[address(arg2)] = m_emissions.length - 1
            if m_emissions.length - 1 == m_emissions.length - 1:
                m_lastDividends[address(arg2)] = m_totalDividends
            else:
                require m_emissions.length >= m_emissions.length - 1
                require m_emissions.length < m_emissions.length
                m_lastDividends[address(arg2)] = m_emissions[m_emissions.length].field_256
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
