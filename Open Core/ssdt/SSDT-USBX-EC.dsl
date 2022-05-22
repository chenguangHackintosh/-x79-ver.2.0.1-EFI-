/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210604 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/wumingquan/Desktop/clover-x79-e5-2670-rx588/OpenCore/ssdt/主板SSDT源码/SSDT-USBX-EC.aml, Mon Aug  9 13:04:33 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000010C (268)
 *     Revision         0x02
 *     Checksum         0x0F
 *     OEM ID           "CORP"
 *     OEM Table ID     "UsbReset"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "CORP", "UsbReset", 0x00001000)
{
    External (_SB_.PCI0.EUSB.HUBN, DeviceObj)
    External (_SB_.PCI0.SBRG, DeviceObj)
    External (_SB_.PCI0.USBE.HUBN, DeviceObj)

    Scope (\_SB.PCI0.EUSB.HUBN)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB.PCI0.USBE.HUBN)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB.PCI0.SBRG)
    {
        Device (EC)
        {
            Name (_HID, "ACID0001")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}

