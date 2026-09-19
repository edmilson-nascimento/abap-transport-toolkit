# 📋 abap-transport-toolkit


Enterprise-grade SAP transport request management built with **ABAP Cloud** and **RAP**.

[![S/4HANA](https://img.shields.io/badge/S%2F4HANA-2023-blue?style=flat&logo=sap&logoColor=white)](https://www.sap.com/s4hana) [![ABAP Cloud](https://img.shields.io/badge/ABAP-Cloud%20Compliant-brightgreen?style=flat&logo=sap&logoColor=white)](https://www.sap.com/abap) [![License](https://img.shields.io/github/license/edmilson-nascimento/abap-transport-toolkit?style=flat)](LICENSE) [![Eclipse ADT](https://img.shields.io/badge/Eclipse%20ADT-4.35.0-2C2255?style=flat&logo=eclipse&logoColor=white)](https://tools.hana.ondemand.com/) [![Commit Activity](https://img.shields.io/github/commit-activity/m/edmilson-nascimento/abap-transport-toolkit?style=flat)](https://github.com/edmilson-nascimento/abap-transport-toolkit) [![Last Commit](https://img.shields.io/github/last-commit/edmilson-nascimento/abap-transport-toolkit?style=flat)](https://github.com/edmilson-nascimento/abap-transport-toolkit) [![Issues](https://img.shields.io/github/issues/edmilson-nascimento/abap-transport-toolkit?style=flat)](https://github.com/edmilson-nascimento/abap-transport-toolkit/issues) [![Stars](https://img.shields.io/github/stars/edmilson-nascimento/abap-transport-toolkit?style=flat)](https://github.com/edmilson-nascimento/abap-transport-toolkit/stargazers)

[![ABAP Cloud](https://img.shields.io/badge/ABAP%20Cloud-Cloud%20Compliant-brightgreen?style=flat&logo=sap&logoColor=white)](https://www.sap.com/abap) [![RAP](https://img.shields.io/badge/RAP-RESTful%20ABAP%20Programming-050002?style=flat&logo=sap&logoColor=white)](https://experience.sap.com/abap/rap) [![Fiori Elements](https://img.shields.io/badge/Fiori%20Elements-UI%20Toolkit-0089D6?style=flat&logo=sap&logoColor=white)](https://experience.sap.com/fiori) [![UI5](https://img.shields.io/badge/UI5-OpenUI5%20%2F%20SAP%20UI5-000000?style=flat&logo=sap&logoColor=white)](https://openui5.org)

[![ABAP Cleaner](https://img.shields.io/github/stars/SAP/abap-cleaner?label=ABAP%20Cleaner&style=social)](https://github.com/SAP/abap-cleaner) [![abapGit](https://img.shields.io/github/stars/larshp/abapGit?label=abapGit&style=social)](https://github.com/larshp/abapGit)


## 📑 Index

- [Quick Start](#quick-start)
- [Overview](#overview)
- [Roadmap](#roadmap)
  - [FASE 1: Foundation (MVP)](#fase-1-foundation-mvp--complete)
  - [FASE 2.1: Visual Enhancements](#fase-21-visual-enhancements--complete)
  - [FASE 2.2: Value Helps & Filters](#fase-22-value-helps--filters--complete)
  - [FASE 2.3: Object Page Enhancements](#fase-23-object-page-enhancements--complete)
  - [FASE 2.4: Owner Name Resolution](#fase-24-owner-name-resolution--complete)
  - [FASE 3.1: Data Modeling](#fase-31-data-modeling-e071--complete)
  - [FASE 3.2: RAP Integration](#fase-32-rap-integration-composition--complete)
  - [FASE 3.3: UI Integration](#fase-33-ui-integration-object-page--complete)
  - [FASE 3.4: Visual Grouping](#fase-34-visual-grouping-ux--complete)
  - [FASE 3.5: Inverse Search](#fase-35-inverse-search--complete)
  - [FASE 4: Transport Tasks](#fase-4-transport-tasks--complete)
  - [FASE 5: ToC Creator](#fase-5-toc-creator-ztoc_creator-replacement-)
  - [FASE 6: Advanced Actions](#fase-6-advanced-actions-)
- [Version History](#version-history)
- [Current Objects](#current-objects)
- [Source Code](#complete-source-code)
- [Tech Stack](#tech-stack)
- [Requirements](#requirements)
- [Troubleshooting](#troubleshooting)
- [Learning Resources](#learning-resources)
- [Author](#author)
- [License](#license)


## 🚀 Quick Start

```bash
1. Open ADT (Eclipse) → Navigate to Service Binding: ZTR_UI_TRANSPORT_REQUEST_2
2. Click "Preview" → Select "TransportRequest" entity
3. 🎉 App launches with 35,000+ transport requests!
```

**Current Status:** FASE 3.5 Complete ✅ (FASE 3 fully done)  
**Features:** Color-coded status • User-friendly descriptions • Dropdown filters • Value Helps • Structured Object Page • Owner name resolution • Transport Objects data model (E071) • Request ↔ Objects composition • Objects tab in the Object Page • Transport Tasks hierarchy (Request → Tasks → Objects) • Inverse search (find a Request by object name) • Objects grouped by Task/Owner


## 📖 Overview

A study project focused on RAP (RESTful ABAP Programming) and ABAP Cloud.

The chosen use case is transport request management - a real-world scenario that exists in many companies, but is usually implemented with classic ABAP. The goal here is to rebuild these functionalities using modern patterns: CDS Views, Fiori Elements, and declarative architecture.

**Target audience:** ABAP developers, Basis teams, and anyone interested in seeing RAP applied in practice.

**Note:** This is a personal learning project. Manage your expectations accordingly.

---

## 🗺️ Roadmap

**Objectives:**
- ✅ Visualize transport requests with modern Fiori UI
- ✅ Replace legacy reports (ALV) with Fiori Elements
- ✅ Enable filtering, searching, drill-down
- ✅ Add colors and user-friendly descriptions
- ✅ Implement dropdown filters with Value Helps
- ✅ Structured Object Page with header and facets
- ✅ Resolve Owner User ID to full name
- ▫️ Automate Transport of Copies (ToC) creation
- ▫️ Track objects across transport requests (E071)
- ▫️ Implement batch operations and advanced actions

---

### **FASE 1: Foundation (MVP)** ✅ COMPLETE

**Goal:** Basic transport request viewer with Fiori Elements  
**Duration:** ~2 hours | **Lines of Code:** ~250 ABAP

```
Transport Request Viewer
├── ✅ CDS Interface View (ZTR_I_TRANSPORT_REQUEST)
├── ✅ CDS Projection View (ZTR_C_TRANSPORT_REQUEST)
├── ✅ Metadata Extension (UI Annotations)
├── ✅ Service Definition (OData contract)
└── ✅ Service Binding (Published & functional)

📊 Result: 35,000+ transport requests with filters & search
```

**Deliverables:**
- List Report with sortable columns
- 6 filter fields (Request, Type, Status, System, Owner, Description)
- Global search with fuzzy matching
- Object Page drill-down
- Zero custom JavaScript

---

### **FASE 2.1: Visual Enhancements** ✅ COMPLETE

**Goal:** Professional UI with colors and descriptions  
**Duration:** ~1 hour | **Lines Added:** ~100 ABAP

```
Visual Improvements
├── ✅ Status Colors (Criticality)
│   ├── 🟢 Green → Released (D)
│   ├── 🟡 Yellow → Modifiable (L)
│   └── 🔴 Red → Released with Errors (R)
│
├── ✅ Request Type Descriptions
│   ├── K → "Workbench"
│   ├── W → "Customizing"
│   └── S/T → "Transport of Copies"
│
└── ✅ Status Descriptions
    ├── D → "Released"
    ├── L → "Modifiable"
    └── R → "Released with Errors"

📊 Result: Color-coded UI with intuitive labels
```

**📸 Screenshot:**

![FASE 2.1 Result](./files/img/fase2-1-final.png)

*Professional UI with semantic colors and descriptions*

---

### **FASE 2.2: Value Helps & Filters** ✅ COMPLETE

**Goal:** Enhanced F4 helps and dropdown filters  
**Duration:** ~1.5 hours | **Lines Added:** ~150 ABAP

```
Value Helps Implementation
├── ✅ Status Value Help (Dropdown from DD07T)
├── ✅ Request Type Value Help (Dropdown from DD07T)
├── ✅ User/Owner Value Help (Dialog from E070)
├── ✅ Filter optimization (removed duplicates)
└── ✅ Service Definition updated with VH entities

📊 Result: Dropdown filters for Status and Type, Dialog for Owner
```

**📸 Screenshot:**

![FASE 2.2 Result](./files/img/fase2-2-final.png)

*Dropdown filters with Value Helps*

---

### **FASE 2.3: Object Page Enhancements** ✅ COMPLETE

**Goal:** Better detail view organization  
**Duration:** ~1 hour | **Lines Added:** ~50 ABAP

```
Object Page Improvements
├── ✅ Header Section
│   ├── Transport Request (title)
│   ├── Description (subtitle)
│   ├── Status (with color/criticality)
│   ├── Request Type
│   └── Owner
│
├── ✅ Facet: General Information
│   ├── Transport Request
│   ├── Description
│   ├── Status (with criticality)
│   ├── Request Type
│   └── Owner
│
└── ✅ Facet: Technical Details
    ├── Target System
    ├── Parent Request
    ├── Creation Date
    └── Creation Time

📊 Result: Professional detail layout with grouped information
```

**Implementation:** Metadata Extension with `@UI.facet`, `@UI.fieldGroup` and `@UI.dataPoint` annotations. 100% declarative — no changes to CDS Views, Service Definition or Service Binding.

**📸 Screenshot:**

![FASE 2.3 Result](./files/img/fase2-3-final.png)

*Structured Object Page with header data points and organized facets*

---

### **FASE 2.4: Owner Name Resolution** ✅ COMPLETE

**Goal:** Display owner full name instead of just User ID  
**Duration:** ~1.5 hours | **Lines Added:** ~30 ABAP

```
Owner Name Resolution
├── ✅ New CDS View Entity (ZTR_I_USER_NAME)
│   ├── Join USR21 + ADRP tables
│   └── Exposes FullName, FirstName, LastName
│
├── ✅ Interface View updated
│   ├── Association to ZTR_I_USER_NAME
│   └── OwnerName with format: USERID (Full Name)
│
├── ✅ Projection View updated
│   └── New field OwnerName exposed
│
└── ✅ Metadata Extension updated
    ├── Owner ID → List Report filter + table column
    └── OwnerName → Object Page header + General Info

📊 Result: Owner shows "JESUSEDM (Edmilson Nascimento Jesus)"
```

**Implementation:** New `ZTR_I_USER_NAME` CDS view entity replicating `V_USERNAME` logic using `USR21` + `ADRP` tables. Owner ID is kept for filtering while `OwnerName` provides human-readable display with fallback to User ID when name is unavailable.

**📸 Screenshot:**

![FASE 2.4 Result](./files/img/fase2-4-final.png)

*Owner name resolved from User ID to full name*

---

### **FASE 3.1: Data Modeling (E071)** ✅ COMPLETE

**Goal:** Create CDS view to read transport objects (`E071`) merging Request and Task data
**Duration:** ~1 hour

```
Data Model Expansion
├── ✅ New Interface View (ZTR_I_TRANSPORT_OBJECT)
│   ├── Source: E071 (Transport Objects)
│   ├── Logic: Association to E070 resolves the parent Request
│   │          (rolls a Task's objects up to its owning Request)
│   └── Fields: ProgramId, ObjectType, ObjectName, ObjectFunction,
│               LockFlag, TaskOwner, TransportRequest
└── ✅ Text Normalization
    └── Case statement for readable types (e.g., 'PROG' -> 'Program')

📊 Result: Backend ready to read objects from DB
```

<details>
<summary><b>📄 ZTR_I_TRANSPORT_OBJECT (Interface View)</b></summary>

```abap
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transport Object - Interface View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZTR_I_TRANSPORT_OBJECT
  as select from e071

  association [0..1] to e070               as _Task    on  $projection.EntryRequest = _Task.trkorr

  association to parent ZTR_I_TRANSPORT_REQUEST as _Request on  $projection.EntryRequest = _Request.TransportRequest

{
      @EndUserText.label: 'Entry Request/Task'
  key trkorr         as EntryRequest,

      @EndUserText.label: 'Entry Position'
  key as4pos          as EntryPosition,

      @EndUserText.label: 'Parent Request'
      case when _Task.strkorr is not initial
        then _Task.strkorr
        else trkorr
      end             as TransportRequest,

      @EndUserText.label: 'Program ID'
      pgmid           as ProgramId,

      @EndUserText.label: 'Object Type'
      object          as ObjectType,

      @EndUserText.label: 'Object Name'
      obj_name        as ObjectName,

      @EndUserText.label: 'Object Function'
      objfunc         as ObjectFunction,

      @EndUserText.label: 'Lock Flag'
      lockflag        as LockFlag,

      @EndUserText.label: 'Task Owner'
      _Task.as4user   as TaskOwner,

      // Object Type Description
      @EndUserText.label: 'Object Type Description'
      case object
        when 'PROG' then 'Program'
        when 'CLAS' then 'Class'
        when 'INTF' then 'Interface'
        when 'FUGR' then 'Function Group'
        when 'FUNC' then 'Function Module'
        when 'TABL' then 'Table'
        when 'TTYP' then 'Table Type'
        when 'DTEL' then 'Data Element'
        when 'DOMA' then 'Domain'
        when 'DDLS' then 'CDS View'
        when 'DDLX' then 'Metadata Extension'
        when 'BDEF' then 'Behavior Definition'
        when 'SRVD' then 'Service Definition'
        when 'SRVB' then 'Service Binding'
        when 'MSAG' then 'Message Class'
        when 'DEVC' then 'Package'
        when 'VIEW' then 'View'
        when 'ENHO' then 'Enhancement Implementation'
        else object
      end             as ObjectTypeText,

      /* Associations */
      _Task,
      _Request
}
```

**Design note:** `E071` entries can be attached either to the main Request or to one of its Tasks. `TransportRequest` resolves this via the `_Task` association to `E070`: when the owning `TRKORR` is itself a Task (`STRKORR` is not initial), it rolls up to the parent Request; otherwise it is already the Request. This is what FASE 3.2 will use to compose objects under `ZTR_I_TRANSPORT_REQUEST`.

**Performance note (2026-09-19):** the `_Request` composition originally joined on the *computed* `TransportRequest` field (the `CASE`/`_Task` roll-up above). E071 has 41M+ rows system-wide, and filtering on a calculated column prevents the database from using the index on `TRKORR` — measured at **~2.6s** per Object Page navigation (full scan), versus **~9ms** filtering `TRKORR` directly (a **~280x** difference). Fixed by joining `_Request` on the raw `EntryRequest` (`TRKORR`) instead. Trade-off: the "Objects" tab now shows only objects entered *directly* on the Request — objects recorded under one of its Tasks won't appear until FASE 4 (Transport Tasks) models that hop as its own indexed join, rather than resolving it through this same computed field.

**Known limitation (resolved in FASE 4):** in practice, most real requests keep their objects on Tasks, not directly on the Request (e.g. `S4DK974007` had 0 direct objects, 36 across its 2 Tasks) — so the "Objects" tab often rendered empty. Accepted deliberately at the time: correctness/performance now, coverage later. **FASE 4 (Transport Tasks) was prioritized ahead of FASE 3.5 (Inverse Search) specifically to close this gap** — see that section for how Request → Tasks → Objects is now modeled as its own indexed hop instead of a computed field.

</details>

---

---

### **FASE 3.2: RAP Integration (Composition)** ✅ COMPLETE

**Goal:** Establish Parent-Child relationship between Request and Objects
**Duration:** ~30 minutes

```
Hierarchy Definition
├── ✅ Root View (ZTR_I_TRANSPORT_REQUEST)
│   └── Added: composition [0..*] of ZTR_I_TRANSPORT_OBJECT as _Objects
│
├── ✅ Child View (ZTR_I_TRANSPORT_OBJECT)
│   └── Added: association to parent ZTR_I_TRANSPORT_REQUEST as _Request
│
└── ✅ Service Definition
    └── Exposed ZTR_I_TRANSPORT_OBJECT as TransportObject (internal navigation)

📊 Result: OData service supports deep hierarchy
```

**Key snippets (added to existing views — see [Complete Source Code](#complete-source-code) for the full files):**

```abap
" ZTR_I_TRANSPORT_REQUEST — new composition association
composition [0..*] of ZTR_I_TRANSPORT_OBJECT as _Objects
```

```abap
" ZTR_I_TRANSPORT_OBJECT — new back-reference to the parent
association to parent ZTR_I_TRANSPORT_REQUEST as _Request on $projection.TransportRequest = _Request.TransportRequest
```

```abap
" ZTR_UI_TRANSPORT_REQUEST_O4 — new exposure (later re-pointed to the
" ZTR_C_TRANSPORT_OBJECT projection in FASE 3.3)
expose ZTR_I_TRANSPORT_OBJECT as TransportObject;
```

---

### **FASE 3.3: UI Integration (Object Page)** ✅ COMPLETE

**Goal:** Display the object list in a new Tab
**Duration:** ~45 minutes

```
UI Implementation
├── ✅ Projection View (ZTR_C_TRANSPORT_OBJECT)
│   └── Defined UI fields (LineItem): Type, Object Name, Function, Task Owner
│
├── ✅ Metadata Extension (ZTR_C_TRANSPORT_OBJECT)
│   └── New — line item columns for the Objects table
│
├── ✅ Projection View (ZTR_C_TRANSPORT_REQUEST)
│   └── Exposed the _Objects composition association
│
├── ✅ Metadata Extension (ZTR_C_TRANSPORT_REQUEST)
│   └── Added Facet: #LINEITEM_REFERENCE (targetElement: _Objects)
│
└── ✅ Service Definition
    └── Re-pointed TransportObject exposure from ZTR_I_TRANSPORT_OBJECT to
        ZTR_C_TRANSPORT_OBJECT (consistent with the project's C_/projection pattern)

📊 Result: New "Objects" tab appears in the Object Page, listing E071 entries for that request
```

<details>
<summary><b>📄 ZTR_C_TRANSPORT_OBJECT (Projection View)</b></summary>

```abap
@EndUserText.label: 'Transport Object - Projection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true

define view entity ZTR_C_TRANSPORT_OBJECT
  as projection on ZTR_I_TRANSPORT_OBJECT
{
  key EntryRequest,
  key EntryPosition,
      TransportRequest,
      ProgramId,
      ObjectType,
      ObjectTypeText,

      @Search.defaultSearchElement: true
      ObjectName,

      ObjectFunction,
      LockFlag,
      TaskOwner,

      /* Associations */
      _Request : redirected to parent ZTR_C_TRANSPORT_REQUEST
}
```

**Bugfix (2026-09-19):** the original version had no `_Request` association at all. A composition child projection must expose its to-parent association with `redirected to parent <root projection>` *before* the root's `redirected to composition child` can resolve — without it, the "Objects" facet on the Object Page silently renders nothing (no error in ADT, no OData error — the facet just never appears). See the matching fix on `ZTR_C_TRANSPORT_REQUEST` above.

**Note:** this projection has no `provider contract transactional_query`, since it's primarily a composition child addressed via `_Objects` navigation from `ZTR_C_TRANSPORT_REQUEST`. It's still exposed as its own top-level entity set (`TransportObject`) in the Service Definition, though, and — as of FASE 3.5 — is directly searchable/browsable standalone (see below); the missing contract only produces an informational warning on activation, not an error.

</details>

<details>
<summary><b>🎨 ZTR_C_TRANSPORT_OBJECT (Metadata Extension)</b></summary>

```abap
@Metadata.layer: #CORE
annotate view ZTR_C_TRANSPORT_OBJECT with
{
  @UI.lineItem: [{ position: 10, importance: #HIGH, label: 'Type' }]
  ObjectTypeText;

  @UI.lineItem: [{ position: 20, importance: #HIGH, label: 'Object Name' }]
  ObjectName;

  @UI.lineItem: [{ position: 30, importance: #MEDIUM, label: 'Function' }]
  ObjectFunction;

  @UI.lineItem: [{ position: 40, importance: #MEDIUM, label: 'Task Owner' }]
  TaskOwner;

  @UI.hidden: true
  EntryRequest;
  @UI.hidden: true
  EntryPosition;
  @UI.hidden: true
  TransportRequest;
  @UI.hidden: true
  ProgramId;
  @UI.hidden: true
  ObjectType;
  @UI.hidden: true
  LockFlag;
}
```

**Note:** this Metadata Extension was extended in FASE 3.4 below with `@UI.presentationVariant` grouping — see that section for the current version.

</details>

---

### **FASE 3.4: Visual Grouping (UX)** ✅ COMPLETE

**Goal:** Organize objects visually by Task or Owner using Fiori Elements
**Duration:** ~20 minutes

```
Visual Refinement
├── ✅ Annotation: @UI.presentationVariant
│   ├── groupBy: ['EntryRequest', 'TaskOwner']
│   └── sortOrder: matching the groupBy fields (required — grouping only
│       merges adjacent rows in a pre-sorted result, otherwise the same
│       group can render as multiple fragmented headers)
│
└── ✅ EntryRequest un-hidden (position 5) so the group header has a label

📊 Result: Objects tab renders collapsible group headers (native
sap.m.Table / GroupHeaderListItem behavior — no custom JS)
```

<details>
<summary><b>🎨 ZTR_C_TRANSPORT_OBJECT (Metadata Extension — updated)</b></summary>

```abap
@Metadata.layer: #CORE
@UI.presentationVariant: [{
  sortOrder: [
    { by: 'EntryRequest', direction: #ASC },
    { by: 'TaskOwner', direction: #ASC }
  ],
  groupBy: ['EntryRequest', 'TaskOwner']
}]
annotate view ZTR_C_TRANSPORT_OBJECT with
{
  @UI: {
    lineItem: [{ position: 5, importance: #HIGH, label: 'Task/Request' }]
  }
  EntryRequest;

  @UI.lineItem: [{ position: 6, importance: #HIGH, label: 'Parent Request' }]
  TransportRequest;

  @UI.lineItem: [{ position: 10, importance: #HIGH, label: 'Type' }]
  ObjectTypeText;

  @UI.lineItem: [{ position: 20, importance: #HIGH, label: 'Object Name' }]
  ObjectName;

  @UI.lineItem: [{ position: 30, importance: #MEDIUM, label: 'Function' }]
  ObjectFunction;

  @UI.lineItem: [{ position: 40, importance: #MEDIUM, label: 'Task Owner' }]
  TaskOwner;

  @UI.hidden: true
  EntryPosition;
  @UI.hidden: true
  ProgramId;
  @UI.hidden: true
  ObjectType;
  @UI.hidden: true
  LockFlag;
}
```

**Updated in FASE 3.5:** `TransportRequest` is no longer `@UI.hidden` — it's now a visible column, so a search result row shows which Request the object belongs to. See the [FASE 3.5](#fase-35-inverse-search--complete) section for the accompanying `@Search` annotations.

</details>

---

### **FASE 3.5: Inverse Search** ✅ COMPLETE

**Goal:** Find a Transport Request by searching for an object name
**Duration:** ~20 minutes

```
Search Configuration
├── ✅ ZTR_C_TRANSPORT_OBJECT
│   ├── @Search.searchable: true (entity level)
│   └── @Search.defaultSearchElement: true on ObjectName
│
└── ✅ TransportRequest un-hidden (was @UI.hidden in FASE 3.3) — the
      search result row now shows which Request the object belongs to

📊 Result: "Where is this object?" answered instantly — searching
   "YTEST" on the TransportObject entity returns EntryRequest =
   S4DK968784 (where it's physically recorded) and TransportRequest =
   S4DK968783 (the parent Request), in ~10ms even against E071's 41M rows.
```

**Design note:** this searches the `TransportObject` entity directly (not the `TransportRequest` List Report's own search box). Making the *Request's* search box also match on object names would require aggregating every object name under each request into a searchable text — an operation that would re-scan all of E071 per Request, the exact anti-pattern the FASE 3.x performance fix removed. Filtering `ObjectName` directly (a plain column, not a computed field) stays fast at any scale — measured ~9.6ms for an exact match and ~13.7ms for a prefix search, even across 41M+ rows.
---

### **FASE 4: Transport Tasks** ✅ COMPLETE

**Goal:** Show child tasks hierarchy
**Duration:** ~1.5 hours

```
Task Management
├── ✅ New Interface View (ZTR_I_TRANSPORT_TASK)
│   ├── Source: E070 WHERE strkorr <> '' (Tasks only)
│   ├── _Request: to-parent association → ZTR_I_TRANSPORT_REQUEST
│   │              (direct join on ParentRequest/STRKORR — indexed, fast)
│   └── _Objects: plain (non-composition) association → ZTR_I_TRANSPORT_OBJECT
│              (direct join on TaskRequest = EntryRequest — same fast
│              pattern as the FASE 3.x performance fix, not a computed field)
├── ✅ New Projection + Metadata Extension (ZTR_C_TRANSPORT_TASK)
│   ├── Own Object Page (General Information facet)
│   └── Own "Objects" tab (#LINEITEM_REFERENCE → _Objects)
├── ✅ ZTR_I_TRANSPORT_REQUEST: composition [0..*] of ZTR_I_TRANSPORT_TASK as _Tasks
└── ✅ ZTR_C_TRANSPORT_REQUEST: new "Tasks" tab (#LINEITEM_REFERENCE → _Tasks)

📊 Result: Request → Tasks → Objects, each hop a direct indexed join.
   Open a Request → "Tasks" tab lists its tasks (owner, status, description) →
   click a task → its own Object Page → its own "Objects" tab shows what's
   actually inside that task.
```

**Design note:** `ZTR_I_TRANSPORT_OBJECT` is a composition child of `ZTR_I_TRANSPORT_REQUEST` (FASE 3.2) — a CDS to-parent association can only target one parent type. Rather than duplicate the Objects view, `ZTR_I_TRANSPORT_TASK` reaches it with a **plain, non-composition** to-many association instead (this whole service is read-only, no Behavior Definition anywhere, so composition's transactional semantics were never actually needed — a plain association is sufficient and avoids the one-parent constraint entirely).

<details>
<summary><b>📄 ZTR_I_TRANSPORT_TASK (Interface View)</b></summary>

```abap
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transport Task - Interface View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZTR_I_TRANSPORT_TASK
  as select from e070

  association [0..1] to e07t                   as _Text     on  $projection.TaskRequest = _Text.trkorr
                                                             and _Text.langu             = $session.system_language

  association [0..1] to ZTR_I_USER_NAME         as _UserName on  $projection.Owner = _UserName.UserID

  association to parent ZTR_I_TRANSPORT_REQUEST as _Request  on  $projection.ParentRequest = _Request.TransportRequest

  association [0..*] to ZTR_I_TRANSPORT_OBJECT  as _Objects  on  $projection.TaskRequest = _Objects.EntryRequest

{
      @EndUserText.label: 'Task'
  key trkorr        as TaskRequest,

      @EndUserText.label: 'Parent Request'
      strkorr       as ParentRequest,

      @EndUserText.label: 'Task Type'
      trfunction    as TaskType,

      @EndUserText.label: 'Task Status'
      trstatus      as TaskStatus,

      @EndUserText.label: 'Owner'
      as4user       as Owner,

      @EndUserText.label: 'Owner Name'
      case when _UserName.FullName is not initial
        then concat_with_space(
               as4user,
               concat( '(', concat( _UserName.FullName, ')' ) ),
               1 )
        else as4user
      end as OwnerName,

      @EndUserText.label: 'Creation Date'
      as4date       as CreationDate,

      @EndUserText.label: 'Creation Time'
      as4time       as CreationTime,

      @EndUserText.label: 'Description'
      _Text.as4text as Description,

      // Status Criticality
      @EndUserText.label: 'Status Criticality'
      case trstatus
        when 'D' then 3
        when 'L' then 2
        when 'R' then 1
        else 0
      end           as StatusCriticality,

      // Task Type Description
      @EndUserText.label: 'Task Type Description'
      case trfunction
        when 'S' then 'Development/Correction'
        when 'Q' then 'Customizing Task'
        when 'R' then 'Repair'
        when 'X' then 'Unclassified Task'
        when 'K' then 'Workbench'
        when 'W' then 'Customizing'
        else trfunction
      end           as TaskTypeText,

      // Status Description
      @EndUserText.label: 'Status Description'
      case trstatus
        when 'D' then 'Released'
        when 'L' then 'Modifiable'
        when 'R' then 'Released with Errors'
        when 'N' then 'Not Released'
        when 'O' then 'Released (Import Finished)'
        else 'Unknown'
      end           as StatusText,

      /* Associations */
      _Text,
      _UserName,
      _Request,
      _Objects
}
where
  strkorr <> ''
```

</details>

<details>
<summary><b>📄 ZTR_C_TRANSPORT_TASK (Projection View)</b></summary>

```abap
@EndUserText.label: 'Transport Task - Projection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

define view entity ZTR_C_TRANSPORT_TASK
  as projection on ZTR_I_TRANSPORT_TASK
{
  key TaskRequest,
      ParentRequest,
      TaskType,
      TaskTypeText,
      TaskStatus,
      StatusText,
      StatusCriticality,
      Owner,
      OwnerName,
      Description,
      CreationDate,
      CreationTime,

      /* Associations */
      _Request : redirected to parent ZTR_C_TRANSPORT_REQUEST,
      _Objects : redirected to ZTR_C_TRANSPORT_OBJECT
}
```

</details>

<details>
<summary><b>🎨 ZTR_C_TRANSPORT_TASK (Metadata Extension)</b></summary>

```abap
@Metadata.layer: #CORE
@UI: {
  headerInfo: {
    typeName: 'Transport Task',
    typeNamePlural: 'Transport Tasks',
    title: { type: #STANDARD, value: 'TaskRequest' },
    description: { value: 'Description' }
  }
}

annotate view ZTR_C_TRANSPORT_TASK with
{
  @UI: {
    facet: [
      {
        id: 'GeneralInfo',
        type: #IDENTIFICATION_REFERENCE,
        label: 'General Information',
        position: 10
      },
      {
        id: 'ObjectsTab',
        purpose: #STANDARD,
        type: #LINEITEM_REFERENCE,
        label: 'Objects',
        position: 20,
        targetElement: '_Objects'
      }
    ],
    lineItem: [{ position: 10, importance: #HIGH }],
    identification: [{ position: 10 }]
  }
  TaskRequest;

  @UI: {
    lineItem: [{ position: 20, importance: #HIGH, label: 'Type' }],
    identification: [{ position: 20, label: 'Type' }]
  }
  TaskTypeText;

  @UI: {
    lineItem: [{ position: 30, importance: #HIGH, label: 'Status', criticality: 'StatusCriticality' }],
    identification: [{ position: 30, label: 'Status', criticality: 'StatusCriticality' }]
  }
  StatusText;

  @UI: {
    lineItem: [{ position: 40, importance: #HIGH, label: 'Owner' }],
    identification: [{ position: 40, label: 'Owner' }]
  }
  OwnerName;

  @UI: {
    lineItem: [{ position: 50, importance: #MEDIUM }],
    identification: [{ position: 50 }]
  }
  Description;

  @UI.identification: [{ position: 60, label: 'Creation Date' }]
  CreationDate;

  @UI.identification: [{ position: 70, label: 'Creation Time' }]
  CreationTime;

  @UI.hidden: true
  ParentRequest;
  @UI.hidden: true
  TaskType;
  @UI.hidden: true
  TaskStatus;
  @UI.hidden: true
  StatusCriticality;
  @UI.hidden: true
  Owner;
}
```

</details>

---

### **FASE 5: ToC Creator (ZTOC_CREATOR Replacement)** ▫️

**Goal:** Automate Transport of Copies creation  
**Duration:** ~12 hours

```
ToC Automation
├── ▫️ Multi-selection (checkboxes)
├── ▫️ RAP Actions (Behavior Definition)
│   ├── Create ToC
│   ├── Merge requests
│   └── Auto-release
├── ▫️ Business Logic
│   ├── TR_INSERT_REQUEST_WITH_TASKS
│   ├── TRINT_MERGE_COMMS
│   └── TRINT_RELEASE_REQUEST
└── ▫️ Validation & Feedback

📊 Result: One-click ToC creation in Fiori
```

> **Note:** `ZTOC_CREATOR` is a pseudo transaction name representing a custom Transport of Copies creation tool.

---

### **FASE 6: Advanced Actions** ▫️

**Goal:** Enterprise-grade operations  
**Duration:** ~8 hours

```
Action Library
├── ▫️ Release request (single-click)
├── ▫️ Add to existing ToC
├── ▫️ View in SE09/SE10 (deep link)
├── ▫️ Export to Excel
├── ▫️ Compare requests
├── ▫️ Check transport conflicts (ZCHECK_TRANSPORT_CONFLICTS)
└── ▫️ Batch operations

📊 Result: Complete transport management suite
```

> **Note:** `ZCHECK_TRANSPORT_CONFLICTS` is a pseudo transaction name representing a custom tool for validating transport conflicts before import.

---

## 🗓️ Version History

| Version | Date | Changes |
|---------|------|---------|
| **1.0.0** | 2025-01-26 | ✅ FASE 1 - Basic transport viewer |
| **1.1.0** | 2025-01-29 | ✅ FASE 2.1 - Visual enhancements |
| **1.2.0** | 2025-02-05 | ✅ FASE 2.2 - Value helps & dropdown filters |
| **1.3.0** | 2025-02-09 | ✅ FASE 2.3 - Object Page enhancements |
| **1.4.0** | 2025-02-09 | ✅ FASE 2.4 - Owner name resolution |
| **1.5.1** | 2026-09-19 | ✅ FASE 3.1 - Data Modeling (E071 view) |
| **1.5.2** | 2026-09-19 | ✅ FASE 3.2 - RAP Integration (Parent-Child) |
| **1.5.3** | 2026-09-19 | ✅ FASE 3.3 - UI Integration (Objects Tab) |
| **1.5.4** | 2026-09-19 | ✅ FASE 3.4 - Visual Grouping (UX) |
| **1.5.5** | 2026-09-19 | ✅ FASE 3.5 - Inverse Search configuration (completed after FASE 4 — see reprioritization note above) |
| **1.5.6** | 2026-09-19 | ✅ FASE 3.x - Bugfix: `ZTR_I_USER_VH` showed User ID twice instead of the resolved name |
| **1.5.7** | 2026-09-19 | ✅ FASE 3.x - Bugfix: "Objects" facet was silently empty — missing `redirected to composition child`/`redirected to parent` |
| **1.5.8** | 2026-09-19 | ✅ FASE 3.x - Perf: `_Request` join moved off a calculated field (~2.6s → ~9ms); Objects tab now scoped to direct entries only |
| **1.6.0** | 2026-09-19 | ✅ FASE 4 - Transport Tasks (Request → Tasks → Objects hierarchy) |
| **2.0.0** | TBD | ▫️ FASE 5 - ToC Creator |

---

## 📦 Current Objects

```
Package: ZTRANSPORT_TOOLKIT
│
├── 📄 CDS Views (10)
│   ├── ZTR_I_TRANSPORT_REQUEST      (Interface View)
│   ├── ZTR_C_TRANSPORT_REQUEST      (Projection View)
│   ├── ZTR_I_USER_NAME              (User Name Resolution)
│   ├── ZTR_I_TRANSPORT_STATUS_VH    (Value Help - Status)
│   ├── ZTR_I_TRANSPORT_TYPE_VH      (Value Help - Type)
│   ├── ZTR_I_USER_VH                (Value Help - User)
│   ├── ZTR_I_TRANSPORT_OBJECT       (Interface View - Objects, E071)
│   ├── ZTR_C_TRANSPORT_OBJECT       (Projection View - Objects)
│   ├── ZTR_I_TRANSPORT_TASK         (Interface View - Tasks, E070)
│   └── ZTR_C_TRANSPORT_TASK         (Projection View - Tasks)
│
├── 🎨 Metadata Extensions (3)
│   ├── ZTR_C_TRANSPORT_REQUEST
│   ├── ZTR_C_TRANSPORT_OBJECT
│   └── ZTR_C_TRANSPORT_TASK
│
├── 🌐 Service Definitions (1)
│   └── ZTR_UI_TRANSPORT_REQUEST_O4
│
└── 🔗 Service Bindings (2)
    ├── ZTR_UI_TRANSPORT_REQUEST     (OData V4 - if available)
    └── ZTR_UI_TRANSPORT_REQUEST_2   (OData V2 - recommended)
```

---

## 📝 Complete Source Code

<details>
<summary><b>📄 ZTR_I_TRANSPORT_REQUEST (Interface View)</b></summary>

```abap
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transport Request - Interface View'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZTR_I_TRANSPORT_REQUEST
  as select from e070

  association [0..1] to e07t                      as _Text     on  $projection.TransportRequest = _Text.trkorr
                                                               and _Text.langu                  = $session.system_language

  // Value Help Associations
  association [0..1] to ZTR_I_TRANSPORT_STATUS_VH as _StatusVH on  $projection.RequestStatus = _StatusVH.Status
  association [0..1] to ZTR_I_TRANSPORT_TYPE_VH   as _TypeVH   on  $projection.RequestType = _TypeVH.RequestType
  association [0..1] to ZTR_I_USER_VH             as _UserVH   on  $projection.Owner = _UserVH.UserID

  // User Name Resolution
  association [0..1] to ZTR_I_USER_NAME           as _UserName on  $projection.Owner = _UserName.UserID

  // Transport Objects (FASE 3.2)
  composition [0..*] of ZTR_I_TRANSPORT_OBJECT    as _Objects

  // Transport Tasks (FASE 4)
  composition [0..*] of ZTR_I_TRANSPORT_TASK      as _Tasks

{
      @EndUserText.label: 'Transport Request'
  key trkorr        as TransportRequest,

      @EndUserText.label: 'Request Type'
      trfunction    as RequestType,

      @EndUserText.label: 'Request Status'
      trstatus      as RequestStatus,

      @EndUserText.label: 'Target System'
      tarsystem     as TargetSystem,

      @EndUserText.label: 'Owner'
      as4user       as Owner,

      @EndUserText.label: 'Owner Name'
      case when _UserName.FullName is not initial
        then concat_with_space(
               as4user,
               concat( '(', concat( _UserName.FullName, ')' ) ),
               1 )
        else as4user
      end as OwnerName,

      @EndUserText.label: 'Creation Date'
      as4date       as CreationDate,

      @EndUserText.label: 'Creation Time'
      as4time       as CreationTime,

      @EndUserText.label: 'Parent Request'
      strkorr       as ParentRequest,

      @EndUserText.label: 'Description'
      _Text.as4text as Description,

      // Criticality for Status Colors
      @EndUserText.label: 'Status Criticality'
      case trstatus
        when 'D' then 3  // Released = Green (Positive)
        when 'L' then 2  // Modifiable = Yellow (Critical)
        when 'R' then 1  // Released with errors = Red (Negative)
        else 0           // Others = Neutral
      end           as StatusCriticality,

      // Request Type Description
      @EndUserText.label: 'Request Type Description'
      case trfunction
        when 'K' then 'Workbench'
        when 'W' then 'Customizing'
        when 'S' then 'Transport of Copies'
        when 'T' then 'Transport of Copies'
        when 'E' then 'Customizing (Extended)'
        when 'Q' then 'Customizing (Request)'
        when 'R' then 'Workbench (Repair)'
        else 'Other'
      end           as RequestTypeText,

      // Status Description
      @EndUserText.label: 'Status Description'
      case trstatus
        when 'D' then 'Released'
        when 'L' then 'Modifiable'
        when 'R' then 'Released with Errors'
        when 'N' then 'Not Released'
        when 'O' then 'Released (Import Finished)'
        else 'Unknown'
      end           as StatusText,

      /* Associations */
      _Text,
      _StatusVH,
      _TypeVH,
      _UserVH,
      _UserName,
      _Objects,
      _Tasks
}
where
  strkorr = '' // Only ORDERs (no TASKs)
```

</details>

<details>
<summary><b>📄 ZTR_C_TRANSPORT_REQUEST (Projection View)</b></summary>

```abap
@EndUserText.label: 'Transport Request - Projection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true

define root view entity ZTR_C_TRANSPORT_REQUEST
  provider contract transactional_query
  as projection on ZTR_I_TRANSPORT_REQUEST
{
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
  key TransportRequest,

      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{
        entity: { name: 'ZTR_I_TRANSPORT_TYPE_VH', element: 'RequestType' }
      }]
      RequestType,

      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{
        entity: { name: 'ZTR_I_TRANSPORT_STATUS_VH', element: 'Status' }
      }]
      RequestStatus,

      @Search.defaultSearchElement: true
      TargetSystem,

      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{
        entity: { name: 'ZTR_I_USER_VH', element: 'UserID' }
      }]
      Owner,

      @Search.defaultSearchElement: true
      OwnerName,

      CreationDate,
      CreationTime,
      ParentRequest,

      @Search.defaultSearchElement: true
      Description,

      StatusCriticality,

      @Search.defaultSearchElement: true
      RequestTypeText,

      @Search.defaultSearchElement: true
      StatusText,

      /* Associations */
      _Objects : redirected to composition child ZTR_C_TRANSPORT_OBJECT,
      _Tasks   : redirected to composition child ZTR_C_TRANSPORT_TASK
}
```

**Bugfix (2026-09-19):** just listing `_Objects` here re-exposed the *interface's* association target (`ZTR_I_TRANSPORT_OBJECT`), which is never published as an OData entity set — only its projection (`ZTR_C_TRANSPORT_OBJECT`) is. Without an explicit `redirected to composition child`, Fiori Elements has no usable navigation target, so the `#LINEITEM_REFERENCE` facet silently fails to render (no error — it just doesn't show the "Objects" tab). See the matching fix on `ZTR_C_TRANSPORT_OBJECT` below (`_Request : redirected to parent ZTR_C_TRANSPORT_REQUEST`), which is required on the child side before the parent's redirect resolves.

</details>

<details>
<summary><b>🎨 ZTR_C_TRANSPORT_REQUEST (Metadata Extension)</b></summary>

```abap
@Metadata.layer: #CORE
@UI: {
  headerInfo: {
    typeName: 'Transport Request',
    typeNamePlural: 'Transport Requests',
    title: { type: #STANDARD, value: 'TransportRequest' },
    description: { value: 'Description' }
  }
}

annotate view ZTR_C_TRANSPORT_REQUEST with
{

  // FACETS - Object Page structure
  @UI: {
    facet: [
      // Header Data Points
      {
        id: 'HeaderStatus',
        purpose: #HEADER,
        type: #DATAPOINT_REFERENCE,
        targetQualifier: 'StatusData',
        position: 10
      },
      {
        id: 'HeaderType',
        purpose: #HEADER,
        type: #DATAPOINT_REFERENCE,
        targetQualifier: 'TypeData',
        position: 20
      },
      {
        id: 'HeaderOwner',
        purpose: #HEADER,
        type: #DATAPOINT_REFERENCE,
        targetQualifier: 'OwnerData',
        position: 30
      },
      // Body Facets
      {
        id: 'GeneralInfo',
        type: #IDENTIFICATION_REFERENCE,
        label: 'General Information',
        position: 10
      },
      {
        id: 'TechnicalDetails',
        type: #FIELDGROUP_REFERENCE,
        label: 'Technical Details',
        targetQualifier: 'TechnicalDetails',
        position: 20
      },
      // Objects Tab (FASE 3.3)
      {
        id: 'ObjectsTab',
        purpose: #STANDARD,
        type: #LINEITEM_REFERENCE,
        label: 'Objects',
        position: 30,
        targetElement: '_Objects'
      },
      // Tasks Tab (FASE 4)
      {
        id: 'TasksTab',
        purpose: #STANDARD,
        type: #LINEITEM_REFERENCE,
        label: 'Tasks',
        position: 40,
        targetElement: '_Tasks'
      }
    ],
    // List Report & General Information
    lineItem: [{ position: 10, importance: #HIGH }],
    selectionField: [{ position: 10 }],
    identification: [{ position: 10 }]
  }
  TransportRequest;

  // Filter with dropdown (hidden in table)
  @UI.selectionField: [{ position: 15 }]
  RequestType;

  // Table + General Info (pos 40) + Header DataPoint
  @UI: {
    lineItem: [{ position: 20, importance: #HIGH, label: 'Request Type' }],
    identification: [{ position: 40, label: 'Request Type' }],
    dataPoint: { qualifier: 'TypeData', title: 'Request Type' }
  }
  RequestTypeText;

  // Filter with dropdown (hidden in table)
  @UI.selectionField: [{ position: 25 }]
  RequestStatus;

  // Table + General Info (pos 30) + Header DataPoint with criticality
  @UI: {
    lineItem: [{ position: 30, importance: #HIGH, label: 'Status', criticality: 'StatusCriticality' }],
    identification: [{ position: 30, label: 'Status', criticality: 'StatusCriticality' }],
    dataPoint: { qualifier: 'StatusData', title: 'Status', criticality: 'StatusCriticality' }
  }
  StatusText;

  // Table + Filter + Technical Details (pos 10)
  @UI: {
    lineItem: [{ position: 40, importance: #MEDIUM }],
    selectionField: [{ position: 40 }],
    fieldGroup: [{ qualifier: 'TechnicalDetails', position: 10, label: 'Target System' }]
  }
  TargetSystem;

  // Table + Filter (Owner ID for filtering)
  @UI: {
    lineItem: [{ position: 50, importance: #MEDIUM }],
    selectionField: [{ position: 50 }]
  }
  Owner;

  // General Info (pos 50) + Header DataPoint (Owner full name)
  @UI: {
    identification: [{ position: 50, label: 'Owner' }],
    dataPoint: { qualifier: 'OwnerData', title: 'Owner' }
  }
  OwnerName;

  // Table + Technical Details (pos 30)
  @UI: {
    lineItem: [{ position: 60, importance: #LOW }],
    fieldGroup: [{ qualifier: 'TechnicalDetails', position: 30, label: 'Creation Date' }]
  }
  CreationDate;

  // Table + Technical Details (pos 40)
  @UI: {
    lineItem: [{ position: 70, importance: #LOW }],
    fieldGroup: [{ qualifier: 'TechnicalDetails', position: 40, label: 'Creation Time' }]
  }
  CreationTime;

  // Table + Technical Details (pos 20)
  @UI: {
    lineItem: [{ position: 80, importance: #LOW }],
    fieldGroup: [{ qualifier: 'TechnicalDetails', position: 20, label: 'Parent Request' }]
  }
  ParentRequest;

  // Table + Filter + General Info (pos 20)
  @UI: {
    lineItem: [{ position: 90, importance: #HIGH }],
    selectionField: [{ position: 60 }],
    identification: [{ position: 20 }]
  }
  Description;

  @UI.hidden: true
  StatusCriticality;

}
```

</details>

<details>
<summary><b>📄 ZTR_I_USER_NAME (User Name Resolution)</b></summary>

```abap
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'User Name - View Entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
  serviceQuality: #A,
  sizeCategory: #L,
  dataClass: #MASTER
}

define view entity ZTR_I_USER_NAME
  as select from usr21
    inner join adrp on  usr21.persnumber = adrp.persnumber
                    and adrp.date_from   = '00010101'
{
      @ObjectModel.text.element: ['FullName']
  key usr21.bname        as UserID,

      @Semantics.text: true
      adrp.name_text     as FullName,

      adrp.name_first    as FirstName,
      adrp.name_last     as LastName
}
```

</details>

<details>
<summary><b>📄 ZTR_I_TRANSPORT_STATUS_VH (Value Help - Status)</b></summary>

```abap
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transport Status - Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
  serviceQuality: #A,
  sizeCategory: #S,
  dataClass: #CUSTOMIZING
}
@ObjectModel.resultSet.sizeCategory: #XS  // Renders as dropdown!

define view entity ZTR_I_TRANSPORT_STATUS_VH
  as select from dd07t
{
      @ObjectModel.text.element: ['StatusText']
  key domvalue_l as Status,

      @Semantics.text: true
      ddtext     as StatusText
}
where domname    = 'TRSTATUS'
  and ddlanguage = $session.system_language
```

</details>

<details>
<summary><b>📄 ZTR_I_TRANSPORT_TYPE_VH (Value Help - Type)</b></summary>

```abap
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transport Type - Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
  serviceQuality: #A,
  sizeCategory: #S,
  dataClass: #CUSTOMIZING
}
@ObjectModel.resultSet.sizeCategory: #XS

define view entity ZTR_I_TRANSPORT_TYPE_VH
  as select from dd07t
{
      @ObjectModel.text.element: ['TypeText']
      @UI.hidden: true
  key domvalue_l as RequestType,

      @Semantics.text: true
      ddtext     as TypeText
}
where
      domname    = 'TRFUNCTION'
  and ddlanguage = $session.system_language
```

</details>

<details>
<summary><b>📄 ZTR_I_USER_VH (Value Help - User)</b></summary>

```abap
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'User - Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
  serviceQuality: #A,
  sizeCategory: #M,
  dataClass: #MASTER
}

define view entity ZTR_I_USER_VH
  as select distinct from e070

  association [0..1] to ZTR_I_USER_NAME as _UserName on $projection.UserID = _UserName.UserID

{
      @EndUserText.label: 'User ID'
      @ObjectModel.text.element: ['UserName']
  key as4user           as UserID,

      @EndUserText.label: 'Name'
      @Semantics.text: true
      case when _UserName.FullName is not initial
        then _UserName.FullName
        else as4user
      end                as UserName,

      /* Associations */
      _UserName
}
where
  as4user <> ''
```

**Bugfix (2026-09-19):** the original version set `UserName` to a copy of `as4user`, so the Owner Value Help dialog showed the same code twice (e.g. `JESUSEDM (JESUSEDM)`) instead of a real name. Fixed by resolving `UserName` through `ZTR_I_USER_NAME` (the same USR21+ADRP lookup used for `OwnerName` in FASE 2.4), with a fallback to the User ID when no name is found.

</details>

<details>
<summary><b>🌐 ZTR_UI_TRANSPORT_REQUEST_O4 (Service Definition)</b></summary>

```abap
@EndUserText.label: 'Transport Request Service Definition'
define service ZTR_UI_TRANSPORT_REQUEST_O4 {
  expose ZTR_C_TRANSPORT_REQUEST   as TransportRequest;
  expose ZTR_I_TRANSPORT_STATUS_VH as TransportStatus;
  expose ZTR_I_TRANSPORT_TYPE_VH   as TransportType;
  expose ZTR_I_USER_VH             as Users;
  expose ZTR_C_TRANSPORT_OBJECT    as TransportObject;
  expose ZTR_C_TRANSPORT_TASK      as TransportTask;
}
```

</details>

<details>
<summary><b>🔗 Service Bindings</b></summary>

### ZTR_UI_TRANSPORT_REQUEST_2 (OData V2 - Recommended)

**Configuration:**
- **Binding Type:** OData V2 - UI
- **Service Definition:** ZTR_UI_TRANSPORT_REQUEST_O4
- **Service URL:** `/sap/opu/odata/sap/ZTR_UI_TRANSPORT_REQUEST_2`

**Exposed Entities:**
- TransportRequest
- TransportStatus
- TransportType
- Users

**Steps to Create:**
1. Right-click Service Definition → New Service Binding
2. Name: `ZTR_UI_TRANSPORT_REQUEST_2`
3. Type: **OData V2 - UI**
4. Activate → **Publish** (mandatory!)
5. Click Preview → Select entity → Test

> **Note:** OData V2 is recommended for better compatibility. Use V4 only if your system has it fully configured.

</details>

---

## 🛠️ Tech Stack

| Component | Technology | Version |
|-----------|------------|---------|
| Platform | SAP S/4HANA On-Premise | 2023 |
| Language | ABAP Cloud compliant | - |
| Framework | RAP (RESTful ABAP) | - |
| Data Layer | CDS Views | - |
| Protocol | OData V2 | - |
| UI | SAP Fiori Elements | - |
| Pattern | List Report + Object Page | - |
| Tool | Eclipse ADT | 4.35.0 |

---

## 📋 Requirements

**System:**
- SAP S/4HANA 2023+
- ABAP Platform 2023
- Development client (e.g., 100)

**Tools:**
- Eclipse IDE with ADT 4.35.0+
- Fiori Launchpad access

**Authorizations:**
- `S_DEVELOP` (CDS creation)
- `S_CTS_ADMI` (transport access)
- Service publication rights

---

## 🔧 Troubleshooting

### Service won't publish

**Error:** `Publishing in Customizing Client not allowed`

**Solution:**
1. Ensure development client (not 000)
2. Use OData V2 - UI (not V4)
3. Check service publication authorization

---

### Data not loading

**Solution:**
1. Verify Service Binding is **Published** (not just activated)
2. Check CDS views activated without errors
3. Confirm E070 table has data
4. Clear browser cache (Ctrl+F5)

---

### Dropdown not showing

**Solution:**
1. Verify Value Help views are activated
2. Check `@ObjectModel.resultSet.sizeCategory: #XS` annotation
3. Ensure Value Help is exposed in Service Definition
4. Republish Service Binding

---

### Owner name showing only User ID

**Solution:**
1. Verify `ZTR_I_USER_NAME` is activated
2. Check `USR21` and `ADRP` tables have data for the user
3. Confirm `adrp.date_from = '00010101'` returns a record
4. If `name_text` is empty in ADRP, the fallback shows the User ID

---

### A `#LINEITEM_REFERENCE` facet (composition tab) silently doesn't appear

**Symptom:** the Object Page shows fewer tabs than expected — no error anywhere (not in ADT, not in the browser console, not in the Gateway error log) — the facet just never renders.

**Cause:** in a CDS projection view, simply listing an inherited composition/association by name (e.g. `_Objects`) re-exposes the *interface's* association target, not its projection. If that interface isn't itself published as an OData entity set (only its projection is), Fiori Elements has no usable navigation target.

**Solution:** explicitly redirect the association on both sides:
- Parent projection: `_Objects : redirected to composition child ZTR_C_TRANSPORT_OBJECT`
- Child projection: `_Request : redirected to parent ZTR_C_TRANSPORT_REQUEST` (must exist before the parent's redirect resolves)

Then reactivate both + the Service Definition together, and unpublish/republish the Service Binding.

---

### Object Page navigation to a composition tab feels slow

**Cause:** filtering a to-many association/composition on a *calculated* CDS field (a `CASE` expression, string concatenation, etc.) instead of a raw table column prevents the database from using an index — the whole source table gets scanned/joined before the filter is applied. On a large table (E071 has 40M+ rows system-wide) this can mean seconds instead of milliseconds per navigation.

**Solution:** join the composition/association on the raw, indexed field (e.g. `TRKORR`), not on a computed roll-up field. If the roll-up logic is still needed for display, keep it as a separate calculated column — just don't use it as a join/filter key.

---

## 🎓 Learning Resources

### RAP & CDS
- [SAP RAP Documentation](https://help.sap.com/docs/abap-cloud/abap-rap)
- [CDS Development Guide](https://help.sap.com/docs/SAP_NETWEAVER_750/cc0c305d2fab47bd808adcad3ca7ee9d/4ed1f2e06e391014adc9fffe4e204223.html)

### Fiori Elements
- [Fiori Elements Overview](https://sapui5.hana.ondemand.com/sdk/#/topic/03265b0408e2432c9571d6b3feb6b1fd)
- [List Report Pattern](https://experience.sap.com/fiori-design-web/list-report-floorplan-sap-fiori-element/)

### ABAP Cloud
- [ABAP Cloud Guide](https://help.sap.com/docs/btp/sap-business-technology-platform/abap-cloud)

---

## 👨‍💻 Author

**Edmilson Nascimento**  
Senior SAP ABAP Developer & Development Stream Leader

**Expertise:**
- ABAP Cloud & RAP Development
- S/4HANA Migration & Modernization
- CDS Views & Fiori Elements

**Connect:**
- GitHub: [@edmilson-nascimento](https://github.com/edmilson-nascimento)
- LinkedIn: [Edmilson Nascimento](https://www.linkedin.com/in/edmilson-nascimento)

---

## 📄 License

MIT License - Free to use in your projects

<details>
<summary><b>View full license</b></summary>

```
MIT License

Copyright (c) 2025 Edmilson Nascimento

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

</details>

---

**Last Updated:** September 2026  
**Current Phase:** FASE 3.5 Complete ✅ — FASE 3 fully done  
**Next Milestone:** FASE 5 - ToC Creator (Transport of Copies automation)

---

**Made with ❤️ using ABAP Cloud & RAP**
