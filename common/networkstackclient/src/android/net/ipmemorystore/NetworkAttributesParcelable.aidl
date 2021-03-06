/*
 * Copyright (C) 2018 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.net.ipmemorystore;

// Blob[] is used to represent an array of byte[], as structured AIDL does not support arrays
// of arrays.
import android.net.ipmemorystore.Blob;
import android.net.networkstack.aidl.quirks.IPv6ProvisioningLossQuirkParcelable;

/**
 * An object to represent attributes of a single L2 network entry.
 * See NetworkAttributes.java for a description of each field. The types used in this class
 * are structured parcelable types instead of the richer types of the NetworkAttributes object,
 * but they have the same purpose. The NetworkAttributes.java file also contains the code
 * to convert the richer types to the parcelable types and back.
 * @hide
 */
@JavaDerive(toString=true)
parcelable NetworkAttributesParcelable {
    byte[] assignedV4Address;
    long assignedV4AddressExpiry;
    String cluster;
    Blob[] dnsAddresses;
    int mtu;
    @nullable IPv6ProvisioningLossQuirkParcelable ipv6ProvisioningLossQuirk;
}
